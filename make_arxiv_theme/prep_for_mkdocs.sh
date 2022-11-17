set -eu
# script to setup for mkdocs
if [ ! -e ".git" ]
   then
       echo "Must run in root of arxiv-docs repo"
       exit 1
fi
   
TMPVENV=./.template_venv
python3 -m venv $TMPVENV
. $TMPVENV/bin/activate
echo "Made temp venv and activated"

pip3 install git+https://github.com/arXiv/arxiv-base.git@ARXIVNG-5130-python310
#pip3.6 install flask_s3
echo "Installed arxiv-base"

mkdir -p generated_arxiv_theme
cd make_arxiv_theme
FLASK_APP=app.py flask generate mkdocs_template > ../generated_arxiv_theme/main.html
cd ..

rm -rf $TMPVENV

echo "If successful the template is now in generated_arxiv_theme/main.html"

