from pathlib import Path

import pytest

from protego import Protego

test_data_directory = Path(__file__).parent / "test_data"
robotstxts = [f for f in test_data_directory.iterdir() if f.is_file()]


@pytest.mark.parametrize("path_to_robotstxt", robotstxts)
def test_no_exceptions(path_to_robotstxt: Path) -> None:
    try:
        try:
            content = path_to_robotstxt.read_bytes().decode("utf-8")
        except UnicodeDecodeError:
            # Downloaded robots.txt is malformed, ignore this
            return
        Protego.parse(content=content)
    except Exception as e:
        raise AssertionError(
            f"{e}. Exception raised while parsing http://{path_to_robotstxt.name}/robots.txt"
        ) from e
