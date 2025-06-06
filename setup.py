from pathlib import Path

from setuptools import find_packages, setup

setup(
    name="Protego",
    version="0.4.0",
    description="Pure-Python robots.txt parser with support for modern conventions",
    long_description=Path("README.rst").read_text(encoding="utf-8"),
    long_description_content_type="text/x-rst",
    url="https://github.com/scrapy/protego",
    author="Anubhav Patel",
    author_email="anubhavp28@gmail.com",
    license="BSD",
    package_dir={"": "src"},
    packages=find_packages("src"),
    python_requires=">=3.9",
    include_package_data=True,
    keywords=["robots.txt", "parser", "robots", "rep"],
    classifiers=[
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: BSD License",
        "Operating System :: OS Independent",
        "Programming Language :: Python",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Programming Language :: Python :: 3.12",
        "Programming Language :: Python :: 3.13",
        "Programming Language :: Python :: Implementation :: CPython",
        "Programming Language :: Python :: Implementation :: PyPy",
    ],
)
