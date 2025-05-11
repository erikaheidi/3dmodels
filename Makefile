.PHONY: text2stamp

text2stamp:
	@echo "Building Text2Stamp..."
	docker build --build-arg uid=$${UID} text2stamp -t text2stamp.local
	@echo "Running Text2Stamp Container..."
	docker run --rm -v $$PWD/text2stamp:/openscad \
		-it --entrypoint /bin/sh text2stamp.local