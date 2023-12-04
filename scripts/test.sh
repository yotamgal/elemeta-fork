#!/bin/bash -ex

poetry install --with test
poetry run pytest --cov=elemeta test --cov-fail-under=90 --ignore=test/nlp/performance
