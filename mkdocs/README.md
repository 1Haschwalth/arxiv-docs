# Static Site Generation with mkdocs
This directory contains a static site builder for arxiv-docs.
## How to generate labs
  ./mklabs.sh
  # at this point the statis site is in mkdocs/labs-site
  google-chrome mkdocs/labs-site/index.html

## How to generate and preview
  cd arxiv-docs
  python3 -m venv ./env
  source ./env/bin/activate
  ./prep_for_mkdocs.sh
  mkdocs serve
  # At this point the static sites are in mkdocs/docs
  google-chrome http://localhost:8000
