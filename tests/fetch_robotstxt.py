"""A tool to simplify fetching robots.txt from a large number of websites.

Usage
-----
$ python fetch_robotstxt.py -l top-10000-websites.txt -d test_data
"""

import argparse
import sys
from pathlib import Path
from urllib.parse import ParseResult, urlparse, urlunparse

import scrapy
from scrapy.crawler import CrawlerProcess

parser = argparse.ArgumentParser(description="Download robots.txt of given websites.")
parser.add_argument(
    "-l",
    "--list",
    action="append",
    dest="websites",
    help="Adds to the list of websites.",
    type=Path,
)
parser.add_argument(
    "-d",
    "--destination",
    action="store",
    dest="directory",
    help="Directory to save robots.txt files.",
    type=Path,
)
args = parser.parse_args()

if not args.directory or not args.websites:
    print("Insufficient or invalid argument(s) provided.")
    sys.exit()


class RobotstxtSpider(scrapy.Spider):
    name = "robotstxt_spider"

    def start_requests(self):
        w: Path
        for w in args.websites:
            if w.is_file():
                with w.open() as f:
                    for domain in f:
                        yield scrapy.Request(
                            url=f"https://{domain.strip()}/robots.txt",
                            callback=self.parse,
                            errback=self.err_cb,
                        )

    def parse(self, response):
        filename = urlparse(response.url).netloc
        if not args.directory.exists():
            args.directory.mkdir()
        (args.directory / filename).write_bytes(response.body)

    def err_cb(self, failure):
        request = failure.request
        parts = urlparse(request.url)
        parts = ParseResult(
            "http", parts.netloc, parts.path, parts.params, parts.query, parts.fragment
        )
        url = urlunparse(parts)
        yield scrapy.Request(url=url, callback=self.parse)


process = CrawlerProcess(settings={"ROBOTSTXT_OBEY": False})
process.crawl(RobotstxtSpider)
process.start()
