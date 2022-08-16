COLOR='\033[1;37m'
NOCOLOR='\033[0m'

echo "$COLOR\n=== ISORT on src ============\n$NOCOLOR"
isort src
echo "$COLOR\n=== ISORT on tests ==========\n$NOCOLOR"
isort tests

echo "$COLOR\n=== BLACK on src ============\n$NOCOLOR"
black src
echo "$COLOR\n=== BLACK on tests ==========\n$NOCOLOR"
black tests

echo "$COLOR\n=== PYLINT on src ===========\n$NOCOLOR"
pylint src
echo "$COLOR\n=== PYLINT on tests =========\n$NOCOLOR"
pylint tests

echo "$COLOR\n=== MYPY ====================\n$NOCOLOR"
mypy .

echo "$COLOR\n=== PYTEST ==================\n$NOCOLOR"
pytest .