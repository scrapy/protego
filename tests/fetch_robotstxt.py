"""A tool to simplify fetching robots.txt from a large number of websites.

Usage
-----
>>> python fetch_robotstxt.py -l top-10000-websites.txt -d test_data
"""
import argparse
import os
import sys
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
)
parser.add_argument(
    "-d",
    "--destination",
    action="store",
    dest="directory",
    help="Directory to save robots.txt files.",
)
args = parser.parse_args()

if not args.directory or not args.websites:
    print("Insufficient or invalid argument(s) provided.")
    sys.exit()


class RobotstxtSpider(scrapy.Spider):
    name = "robotstxt_spider"

    def start_requests(self):
        for w in args.websites:
            if os.path.isfile(w):
                with open(w, "r") as f:
                    for domain in f:
                        domain = domain.strip()
                        yield scrapy.Request(
                            url="https://{}/robots.txt".format(domain),
                            callback=self.parse,
                            errback=self.err_cb,
                        )

    def parse(self, response):
        filename = urlparse(response.url).netloc
        if not os.path.exists(args.directory):
            os.mkdir(args.directory)
        with open(os.path.join(args.directory, filename), "wb") as f:
            f.write(response.body)

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
