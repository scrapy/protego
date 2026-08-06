import re

import pytest
from docutils.core import publish_doctree

from benchmarks._parsers import ADAPTERS, FEATURES, ProtegoAdapter, supports
from benchmarks.compare import README, _refs, _relative, _table


@pytest.mark.parametrize("adapter", ADAPTERS, ids=lambda a: a.name)
def test_probes_run(adapter: type) -> None:
    for _, key, _probe in FEATURES:
        assert isinstance(supports(adapter, key), bool)


@pytest.mark.parametrize(("_label", "key", "_probe"), FEATURES)
def test_protego_supports_everything(_label: str, key: str, _probe: object) -> None:
    assert supports(ProtegoAdapter, key)


# Callgrind's summary, as written to stderr at the end of a run. The counts of
# the "Collected" and "I refs" lines agree; only their formatting differs.
_CALLGRIND_STDERR = b"""==1234== Callgrind, a call-graph generating cache profiler
==1234== Command: python -m benchmarks._run Protego parse 20
==1234==
==1234== For interactive control, run 'callgrind_control -h'.
==1234==
==1234== Events    : Ir
==1234== Collected : 987654321
==1234==
==1234== I   refs:      987,654,321
"""


def test_refs() -> None:
    assert _refs(_CALLGRIND_STDERR) == 987654321
    with pytest.raises(RuntimeError, match="No instruction count"):
        _refs(b"==1234== valgrind: fatal error\n")


def test_relative() -> None:
    assert _relative(100, 50) == "+100%"
    assert _relative(100, 200) == "-50%"
    assert _relative(100, 100) == "0%"


def test_table_is_valid_rst() -> None:
    """The table parses, and every link it uses is defined in the README."""
    performance = {adapter.name: "+1%" for adapter in ADAPTERS}
    performance[ProtegoAdapter.name] = ""
    targets = re.findall(
        r"^\.\. _.+?: \S+$", README.read_text(encoding="utf-8"), re.MULTILINE
    )
    table = _table(performance) + "\n\n" + "\n".join(targets)

    problems = []
    publish_doctree(
        table,
        settings_overrides={
            "report_level": 2,
            "halt_level": 5,
            "warning_stream": type(
                "_Sink", (), {"write": lambda _self, text: problems.append(text)}
            )(),
        },
    )
    assert not problems, "".join(problems)
