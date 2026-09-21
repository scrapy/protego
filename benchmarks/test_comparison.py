import re

import pytest
from docutils.core import publish_doctree

from benchmarks._parsers import ADAPTERS, FEATURES, ProtegoAdapter, supports
from benchmarks.compare import _BENCHMARKS, README, _relative, _table


@pytest.mark.parametrize("adapter", ADAPTERS, ids=lambda a: a.name)
def test_probes_run(adapter: type) -> None:
    for _, key, _probe in FEATURES:
        assert isinstance(supports(adapter, key), bool)


@pytest.mark.parametrize(("_label", "key", "_probe"), FEATURES)
def test_protego_supports_everything(_label: str, key: str, _probe: object) -> None:
    assert supports(ProtegoAdapter, key)


def test_relative() -> None:
    assert _relative(100, 50) == "+100%"
    assert _relative(100, 200) == "-50%"
    assert _relative(100, 100) == "0%"


def test_table_is_valid_rst() -> None:
    """The table parses, and every link it uses is defined in the README."""
    performance = {
        bench: {
            adapter.name: "" if adapter is ProtegoAdapter else "+1%"
            for adapter in ADAPTERS
        }
        for bench in _BENCHMARKS
    }
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
