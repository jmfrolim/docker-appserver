USER = totvs
NAME = $(USER)/appserver
VERSION = 17-02-07-700131227A

.PHONY: all build tag_latest release

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm .

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest
