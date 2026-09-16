import pytest

from benchmarks._parsers import ProtegoAdapter
from benchmarks._workload import content, match, parse


@pytest.fixture(scope="module")
def robotstxt() -> str:
    return content()


@pytest.mark.benchmark
def test_parse(benchmark, robotstxt: str) -> None:
    benchmark(parse, ProtegoAdapter, robotstxt)


@pytest.mark.benchmark
def test_match(benchmark, robotstxt: str) -> None:
    parser = parse(ProtegoAdapter, robotstxt)
    benchmark(match, parser)
