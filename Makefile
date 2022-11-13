# -*- coding: utf-8 -*-
.PHONY: clean build deploy dev preview

.DEFAULT_GOAL := build

clean:
	rm -rf _build/

build:
	./scripts/build.sh

deploy:
	./scripts/deploy.sh

dev:
	pip install -r requirements.txt

preview: build
	open _build/html/index.html
