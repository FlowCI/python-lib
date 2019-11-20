
.PHONY: build clean

build:clean
	python3 setup.py sdist bdist_wheel
	twine upload --repository-url https://upload.pypi.org/legacy/ dist/*

clean:
	rm -rf ./dist
	rm -rf ./build
	rm -rf ./*-info