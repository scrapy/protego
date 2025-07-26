from protego._utils import _hexescape, _unquote


class TestUnquote:
    """Tests for unquote()"""

    def test_unquoting(self):
        # Make sure unquoting of all ASCII values works
        escape_list = []
        for num in range(128):
            given = _hexescape(chr(num))
            expect = chr(num)
            result = _unquote(given)
            assert expect == result
            escape_list.append(given)
        escape_string = "".join(escape_list)
        del escape_list
        result = _unquote(escape_string)
        assert result.count("%") == 1, (
            f"using unquote(): not all characters escaped: {result}"
        )

    def test_unquoting_badpercent(self):
        # Test unquoting on bad percent-escapes
        given = "%xab"
        expect = given
        result = _unquote(given)
        assert expect == result

        given = "%x"
        expect = given
        result = _unquote(given)
        assert expect == result

        given = "%"
        expect = given
        result = _unquote(given)
        assert expect == result

    def test_unquoting_parts(self):
        # Make sure unquoting works when have non-quoted characters
        # interspersed
        given = f"ab{_hexescape('c')}d"
        expect = "abcd"
        result = _unquote(given)
        assert expect == result

    def test_unquoting_plus(self):
        # Test difference between unquote() and unquote_plus()
        given = "are+there+spaces..."
        expect = given
        result = _unquote(given)
        assert expect == result

    def test_unquote_with_unicode(self):
        # Characters in the Latin-1 range, encoded with UTF-8
        given = "br%C3%BCckner_sapporo_20050930.doc"
        expect = "br\u00fcckner_sapporo_20050930.doc"
        result = _unquote(given)
        assert expect == result

        # Characters in the Latin-1 range, encoded with None (default)
        result = _unquote(given)
        assert expect == result

        # Characters in BMP, encoded with UTF-8
        given = "%E6%BC%A2%E5%AD%97"
        expect = "\u6f22\u5b57"  # "Kanji"
        result = _unquote(given)
        assert expect == result

        # Decode with UTF-8, invalid sequence
        given = "%F3%B1"
        expect = "\ufffd"  # Replacement character
        result = _unquote(given)
        assert expect == result

        # Decode with UTF-8, invalid sequence, replace errors
        result = _unquote(given, errors="replace")
        assert expect == result

        # Decode with UTF-8, invalid sequence, ignoring errors
        given = "%F3%B1"
        expect = ""
        result = _unquote(given, errors="ignore")
        assert expect == result

        # A mix of non-ASCII and percent-encoded characters, UTF-8
        result = _unquote("\u6f22%C3%BC")
        expect = "\u6f22\u00fc"
        assert expect == result

    def test_escape_sequence_uppercase(self):
        result = _unquote("%2fabc%7exyz", ignore="/~")
        expect = "%2Fabc%7Exyz"
        assert expect == result
