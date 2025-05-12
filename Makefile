.PHONY: text2stamp

openscad:
	@echo "Building OpenSCAD container..."
	docker build --build-arg uid=$${UID} . -t openscad.local
	@echo "Running OpenSCAD Container..."
	docker run --rm -v $$PWD:/openscad \
		-it --entrypoint /bin/sh openscad.local