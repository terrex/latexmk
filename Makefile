build-and-push:
	docker build . -t xiterrex/latexmk:latest
	docker push xiterrex/latexmk:latest

.PHONY: build-and-push

# to test build a latex project:
# docker run -v `pwd`:/project xiterrex/latexmk
