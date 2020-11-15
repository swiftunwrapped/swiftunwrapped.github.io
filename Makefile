.DEFAULT: build

.PHONY: build
build:
	bundle exec jekyll build

.PHONY: install
install:
	bundle install

.PHONY: update
update:
	bundle update

.PHONY: watch
watch:
	bundle exec jekyll build --watch

.PHONY: incr
incr:
	bundle exec jekyll build --watch --incremental

.PHONY: future
future:
	bundle exec jekyll build --watch --future

.PHONY: serve
serve:
	bundle exec jekyll serve --watch --incremental
