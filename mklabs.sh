set -e

# Gets required python libraries and builds labs site.

if [ ! -e ".git" ]
   then
       echo "Must run in root of arxiv-docs repo"
       exit 1
fi

VIRTUAL_ENV=/tmp/arxiv-docs-venv
python3 -m venv $VIRTUAL_ENV
PATH="$VIRTUAL_ENV/bin:$PATH"

. prep_for_mkdocs.sh

cd mkdocs
mkdocs build --config-file ./mkdocs-labs.yml
cd ..
echo "*** mkdocs is now in $(pwd)/labs-site"
