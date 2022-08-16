COLOR='\033[1;37m'
NOCOLOR='\033[0m'

echo "$COLOR\n=== ISORT on src ============\n$NOCOLOR"
poetry run isort src
echo "$COLOR\n=== ISORT on tests ==========\n$NOCOLOR"
poetry run isort tests

echo "$COLOR\n=== BLACK on src ============\n$NOCOLOR"
poetry run black src
echo "$COLOR\n=== BLACK on tests ==========\n$NOCOLOR"
poetry run black tests

echo "$COLOR\n=== PYLINT on src ===========\n$NOCOLOR"
poetry run pylint src
echo "$COLOR\n=== PYLINT on tests =========\n$NOCOLOR"
poetry run pylint tests

echo "$COLOR\n=== MYPY ====================\n$NOCOLOR"
poetry run mypy .

echo "$COLOR\n=== PYTEST ==================\n$NOCOLOR"
poetry run pytest .