
.PHONY: build clean

build:
	python3 setup.py sdist bdist_wheel
	twine upload --repository-url https://test.pypi.org/legacy/ dist/*

clean:
	rm -rf ./dist
	rm -rf ./build
	rm -rf ./*-info