echo "\n=== ISORT ============\n"
isort .
echo "\n=== BLACK ============\n"
black .
echo "\n=== PYLINT ===========\n"
pylint $(git ls-files '*.py')
echo "\n=== MYPY =============\n"
mypy . --strict --ignore-missing-imports
echo "\n=== PYTEST ===========\n"
pytest --cov