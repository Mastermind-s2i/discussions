all: install build

env:
ifeq ($(OS),Windows_NT)
	copy example.env test.env
else
	cp example.env test.env
endif

install:
	bundle install

start:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

actions:
	act --secret-file .env