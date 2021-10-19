#!/bin/bash

# Organization for the course
ORGANIZATION='AaltoGIS'

# Repository for the course notebooks
NOTEBOOKS_REPO='notebooks'

# Branch from where the notebooks are fetched from
# Typically 'master' or 'main'
# (different years/courses can also be on separate branches of the same repo)
BRANCH='spatial-analytics-2021'

cd /home/jovyan/work
# git reflog requires a name and email if user is not in passwd
# even if you're only cloning
export GIT_COMMITTER_NAME=anonymous
export GIT_COMMITTER_EMAIL=anon@localhost

# Parse the GitHub repository
SOURCE_REPO="https://github.com/$ORGANIZATION/$NOTEBOOKS_REPO.git"

# Grab notebooks repository
NOTEBOOK_DIR='/home/jovyan/work/notebooks'
if [ -d "$NOTEBOOK_DIR" ]; then
    # Change directories and pull
    cd "$NOTEBOOK_DIR"
    git pull origin $BRANCH
else
    # Clone the notebooks directory
    git clone --single-branch --branch $BRANCH $SOURCE_REPO
fi

# Create data directory if it doesn't exist
DATA_DIR='/home/jovyan/work/data'
if [ ! -d "$DATA_DIR" ]; then
    mkdir $DATA_DIR
fi

# If needed, add data download/extract commands here
# cd "$DATA_DIR"
# FILESRC="<MYLINK_TO_DATA>"
# wget $FILESRC

# Create exercises directory if it doesn't exist
EXERCISE_DIR='/home/jovyan/work/exercises'
if [ ! -d "$EXERCISE_DIR" ]; then
    mkdir $EXERCISE_DIR
fi

# Go to containing folder
cd "$NOTEBOOK_DIR"
