.PHONY: dasl

dasl-build:
	cd dasl-src && \
	zola build --force --output-dir ../dasl && \
	cd ..

run: dasl-build
	quarto preview --port 5678
