develop:
	pip install -e .
	pip install -r requirements-dev.txt
test:
	py.test
testcoverage:
	py.test --cov=addok/
testall:
	py.test --quiet
	cd ../addok-france && py.test --quiet
	cd ../addok-fr && py.test --quiet
	cd ../addok-csv && py.test --quiet
	cd ../addok-sqlite-store && py.test --quiet
pypi:
	python setup.py sdist bdist_wheel upload
