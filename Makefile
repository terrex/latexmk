build-and-push:
	docker build . -t xiterrex/latexmk:latest
	docker push xiterrex/latexmk:latest

.PHONY: build-and-push
