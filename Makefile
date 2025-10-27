install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

format-check:
	black --check *.py

lint:
	pylint --disable=R,C hello.py

all: install lint test
