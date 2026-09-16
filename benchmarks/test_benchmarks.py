import pytest

from benchmarks._parsers import ProtegoAdapter
from benchmarks._workload import corpus, match, parse


@pytest.fixture(scope="module")
def sites() -> list[tuple[str, list[str]]]:
    return corpus()


@pytest.mark.benchmark
def test_parse(benchmark, sites: list[tuple[str, list[str]]]) -> None:
    benchmark(parse, ProtegoAdapter, sites)


@pytest.mark.benchmark
def test_match(benchmark, sites: list[tuple[str, list[str]]]) -> None:
    parsed = parse(ProtegoAdapter, sites)
    benchmark(match, parsed)
