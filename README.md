# CSC JupyterLab environment for Aalto GIS courses

Configuring the JupyterLab Environment for CSC Notebooks. This repository will be used to
configure which repository is used to fetch the student versions of the lesson
tutorials.  

Link to the configuration file of your course in this repository ([see docs](http://cscfi.github.io/pebbles/group_owners_guide.html)) should be added in https://notebooks.csc.fi as an environment variable
to the Blueprint settings (into `environment variables for docker` -box (third from above in the panel)), e.g.

 - `AUTODOWNLOAD_URL=https://raw.githubusercontent.com/AaltoGIS/CSC-notebooks-env-config/master/sustainability-gis-installations.sh AUTODOWNLOAD_EXEC=sustainability-gis-installations.sh`

## What to do?

Create a shell file for your course based on [this example]( [sustainability-gis-installations.sh](https://github.com/AaltoGIS/CSC-notebooks-env-config/blob/master/sustainability-gis-installations.sh)) and update following parameters:

 - ORGANIZATION
 - NOTEBOOKS_REPO
 - BRANCH

## Note

It is important to create separate installation files for different courses 
because there might be multiple courses running at the same time which use CSC Notebooks.

