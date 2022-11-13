# -*- coding: utf-8 -*-
.PHONY: clean build deploy dev preview build_and_preview

.DEFAULT_GOAL := build_and_preview

clean:
	rm -rf _build/

build:
	./scripts/build.sh

deploy:
	./scripts/deploy.sh

dev:
	pip install -r requirements.txt

preview:
	open _build/html/index.html

build_and_preview: build preview
