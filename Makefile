.PHONY: dasl

dasl-build:
	cd dasl-src && \
	zola build --force --base-url "http://localhost:5678/dasl/" --output-dir ../dasl && \
	cd ..

run: dasl-build
	quarto preview --no-browser --port 5678

dasl-build-prod:
	cd dasl-src && \
	zola build --force --output-dir ../dasl && \
	cd ..
