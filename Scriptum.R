# As at 2023-11-16 10:36GMT (HD), on Brutus:
# ====
# R version 4.3.2 (2023-10-31) -- "Eye Holes"
# Copyright (C) 2023 The R Foundation for Statistical Computing
# Platform: x86_64-pc-linux-gnu (64-bit)
# 
# R is free software and comes with ABSOLUTELY NO WARRANTY.
# You are welcome to redistribute it under certain conditions.
# Type 'license()' or 'licence()' for distribution details.
# 
# Natural language support but running in an English locale
# 
# R is a collaborative project with many contributors.
# Type 'contributors()' for more information and
# 'citation()' on how to cite R or R packages in publications.
# 
# Type 'demo()' for some demos, 'help()' for on-line help, or
# 'help.start()' for an HTML browser interface to help.
# Type 'q()' to quit R.
# 
# > renv::activate()
# Error in loadNamespace(x) : there is no package called ‘renv’
# > library(renv)
# 
# Attaching package: ‘renv’
# 
# The following objects are masked from ‘package:stats’:
#   
#   embed, update
# 
# The following objects are masked from ‘package:utils’:
#   
#   history, upgrade
# 
# The following objects are masked from ‘package:base’:
#   
#   autoload, load, remove
# 
# > renv::activate()
# 
# Restarting R session...
# 
# - Project '/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR' loaded. [renv 1.0.3]
# - The project is out-of-sync -- use `renv::status()` for details.
# > renv::status()
# This project does not contain a lockfile.
# Use `renv::snapshot()` to create a lockfile.
# > renv::snapshot()
# 
# NOTE: Dependency discovery took 12 seconds during snapshot.
# Consider using .renvignore to ignore files, or switching to explicit snapshots.
# See `?renv::dependencies` for more information.
# 
# The following required packages are not installed:
#   - data.table
# - foreach
# - GenomicFeatures
# - ggplot2
# - rhdf5
# Packages must first be installed before renv can snapshot them.
# Use `renv::dependencies()` to see where this package is used in your project.
# 
# What do you want to do? 
#   
#   1: Snapshot, just using the currently installed packages.
# 2: Install the packages, then snapshot.
# 3: Cancel, and resolve the situation on your own.
# 
# Selection: 1
# The following package(s) will be updated in the lockfile:
#   
#   # CRAN -----------------------------------------------------------------------
# - renv   [* -> 1.0.3]
# 
# The version of R recorded in the lockfile will be updated:
#   - R      [* -> 4.3.2]
# 
# - Lockfile written to "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/renv.lock".
# >
# ====


# Load required packages
# 
library(reticulate)


# As at 2023-11-09 18:21GMT (HD), as copy--pasted from Workbench Console:
# ====
# > reticulate::install_python()   #Note that for "> reticulate::install_python()", default value for argument 'version = "3.9:latest"' so that's what we're using here as well apparently (HD as at 2023-11-13 16:41GMT).
# trying URL 'https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer'
# Content type 'text/plain; charset=utf-8' length 2827 bytes
# ==================================================
#   downloaded 2827 bytes
#                                         
# Installing pyenv ...
# Checking out files: 100% (1130/1130), done.
#                                         
# WARNING: seems you still have not added 'pyenv' to the load path.
#                                         
# # Load pyenv automatically by appending
# # the following to 
# ~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
# and ~/.bashrc (for interactive shells) :
#                                           
#   export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
#                                         
# # Restart your shell for the changes to take effect.
#                                         
# # Load pyenv-virtualenv automatically by adding
# # the following to ~/.bashrc:
#                                         
# eval "$(pyenv virtualenv-init -)"
#                                         
# Done! pyenv has been installed to '/home/hermanus.draisma/.local/share/r-reticulate/pyenv/bin/pyenv'.
# Cloning into '/home/hermanus.draisma/.pyenv/plugins/pyenv-update'...
# + /home/hermanus.draisma/.local/share/r-reticulate/pyenv/bin/pyenv update
# + /home/hermanus.draisma/.local/share/r-reticulate/pyenv/bin/pyenv install --skip-existing 3.9.18
# Downloading Python-3.9.18.tar.xz...
# -> https://www.python.org/ftp/python/3.9.18/Python-3.9.18.tar.xz
# Installing Python-3.9.18...
# Traceback (most recent call last):
#   File "<string>", line 1, in <module>
#   File "/home/hermanus.draisma/.pyenv/versions/3.9.18/lib/python3.9/ctypes/__init__.py", line 8, in <module>
#   from _ctypes import Union, Structure, Array
# ModuleNotFoundError: No module named '_ctypes'
# WARNING: The Python ctypes extension was not compiled. Missing the libffi lib?
#   Traceback (most recent call last):
#   File "<string>", line 1, in <module>
#   File "/home/hermanus.draisma/.pyenv/versions/3.9.18/lib/python3.9/sqlite3/__init__.py", line 57, in <module>
#   from sqlite3.dbapi2 import *
#   File "/home/hermanus.draisma/.pyenv/versions/3.9.18/lib/python3.9/sqlite3/dbapi2.py", line 27, in <module>
#   from _sqlite3 import *
#   ModuleNotFoundError: No module named '_sqlite3'
# WARNING: The Python sqlite3 extension was not compiled. Missing the SQLite3 lib?
#   Installed Python-3.9.18 to /home/hermanus.draisma/.pyenv/versions/3.9.18
# [1] "/home/hermanus.draisma/.pyenv/versions/3.9.18/bin/python3.9"
# > reticulate::virtualenv_install(envname = "r-reticulate4NDD_SMR", python_version = ">3.7", packages = "streamlit==1.20.0")
# Using Python: /home/hermanus.draisma/.pyenv/versions/3.9.18/bin/python3.9
# Creating virtual environment 'r-reticulate4NDD_SMR' ... 
# + /home/hermanus.draisma/.pyenv/versions/3.9.18/bin/python3.9 -m venv /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR
# Done!
#   Installing packages: pip, wheel, setuptools
# + /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR/bin/python -m pip install --upgrade pip wheel setuptools
# Requirement already satisfied: pip in /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR/lib/python3.9/site-packages (23.0.1)
# Collecting pip
# Downloading pip-23.3.1-py3-none-any.whl (2.1 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 12.4 MB/s eta 0:00:00
# Collecting wheel
# [... -- HD]
# Downloading rpds_py-0.12.0-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.2 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.2/1.2 MB 10.8 MB/s eta 0:00:00
# Downloading smmap-5.0.1-py3-none-any.whl (24 kB)
# Installing collected packages: pytz, zipp, watchdog, validators, urllib3, tzlocal, typing-extensions, tornado, toolz, toml, smmap, six, semver, rpds-py, pympler, pygments, protobuf, pillow, packaging, numpy, mdurl, MarkupSafe, idna, entrypoints, click, charset-normalizer, certifi, cachetools, blinker, attrs, requests, referencing, python-dateutil, pyarrow, markdown-it-py, jinja2, importlib-metadata, gitdb, rich, pydeck, pandas, jsonschema-specifications, gitpython, jsonschema, altair, streamlit
# Successfully installed MarkupSafe-2.1.3 altair-4.2.2 attrs-23.1.0 blinker-1.7.0 cachetools-5.3.2 certifi-2023.7.22 charset-normalizer-3.3.2 click-8.1.7 entrypoints-0.4 gitdb-4.0.11 gitpython-3.1.40 idna-3.4 importlib-metadata-6.8.0 jinja2-3.1.2 jsonschema-4.19.2 jsonschema-specifications-2023.7.1 markdown-it-py-3.0.0 mdurl-0.1.2 numpy-1.26.1 packaging-23.2 pandas-1.5.3 pillow-10.1.0 protobuf-3.20.3 pyarrow-14.0.1 pydeck-0.8.1b0 pygments-2.16.1 pympler-1.0.1 python-dateutil-2.8.2 pytz-2023.3.post1 referencing-0.30.2 requests-2.31.0 rich-13.6.0 rpds-py-0.12.0 semver-3.0.2 six-1.16.0 smmap-5.0.1 streamlit-1.20.0 toml-0.10.2 toolz-0.12.0 tornado-6.3.3 typing-extensions-4.8.0 tzlocal-5.2 urllib3-2.0.7 validators-0.22.0 watchdog-3.0.0 zipp-3.17.0
# > ?renv::activate   #... which says amongst other things that "deactivate()
# removes the infrastructure added by activate(), and restarts the session", so
# that's something I could/should do as a first thing next -- HD as at
# 2023-11-09 18:26GMT.
# >
# ====


# As at 2023-11-09 18:33GMT (HD), as copy--pasted from Workbench Terminal:
# ====
# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$ streamlit run ./Home.py
# 
# Git integration is disabled.
# 
# Streamlit requires Git 2.7.0 or later, but you have 1.8.3.1.
# Git is used by Streamlit Cloud (https://streamlit.io/cloud).
# To enable this feature, please update Git.
# 
# You can now view your Streamlit app in your browser.
# 
# Local URL: http://localhost:8501
# Network URL: http://172.16.40.91:8501
# 
# 2023-11-09 16:33:54.635 Uncaught app exception
# Traceback (most recent call last):
#   File "/home/hermanus.draisma/.virtualenvs/r-reticulate/lib64/python3.6/site-packages/streamlit/scriptrunner/script_runner.py", line 554, in _run_script
# exec(code, module.__dict__)
# File "pages/About.py", line 22, in <module>
#   tgtex, tmeta, tothereqtl = st.tabs(["GTEx", "MetaBrain", "Other Sources"])
# AttributeError: module 'streamlit' has no attribute 'tabs'
# ^C  Stopping...
# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$ streamlit --version
# Streamlit, version 1.10.0
# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$ pwd
# /home/hermanus.draisma/SOFTWARE/omicsynthcustomanalysis/NDD_SMR
# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$ /home/hermanus.draisma/.virtualenvs/r-reticulate/bin/python -m pip --version
# pip 21.3.1 from /home/hermanus.draisma/.virtualenvs/r-reticulate/lib64/python3.6/site-packages/pip (python 3.6)
# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$ /home/hermanus.draisma/.virtualenvs/r-reticulate/bin/python -m pip install --upgrade pip
# Requirement already satisfied: pip in /home/hermanus.draisma/.virtualenvs/r-reticulate/lib/python3.6/site-packages (21.3.1)
# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$ /home/hermanus.draisma/.virtualenvs/r-reticulate/bin/python -m pip install -r ./requirements.txt
# Requirement already satisfied: pip in /home/hermanus.draisma/.virtualenvs/r-reticulate/lib/python3.6/site-packages (from -r ./requirements.txt (line 1)) (21.3.1)
# Requirement already satisfied: pandas in /home/hermanus.draisma/.virtualenvs/r-reticulate/lib/python3.6/site-packages (from -r ./requirements.txt (line 2)) (1.1.5)
# Collecting scipy
#   Downloading scipy-1.5.4-cp36-cp36m-manylinux1_x86_64.whl (25.9 MB)
#      |████████████████████████████████| 25.9 MB 45.0 MB/s            
# ERROR: Could not find a version that satisfies the requirement streamlit==1.20.0 (from versions: 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.8.2, 0.9.0, 0.11.0, 0.12.2, 0.12.3, 0.12.4, 0.13.0, 0.13.1, 0.13.3, 0.13.5, 0.14.2, 0.15.0, 0.15.1, 0.15.2, 0.15.3, 0.15.4, 0.15.5, 0.15.6, 0.16.0, 0.16.1, 0.16.2, 0.16.3, 0.17.0, 0.17.1, 0.17.2, 0.18.0, 0.18.1, 0.19.0, 0.19.1, 0.20.0, 0.21.0, 0.22.0, 0.22.1, 0.22.2, 0.23.0, 0.24.0, 0.24.1, 0.24.2, 0.24.3, 0.25.0, 0.26.0, 0.26.1, 0.27.0, 0.28.0, 0.29.0, 0.30.0, 0.31.0, 0.32.0, 0.33.0, 0.34.0, 0.35.0, 0.36.0, 0.37.0, 0.40.0, 0.40.1, 0.41.0, 0.42.0, 0.43.0, 0.43.1, 0.43.2, 0.44.0, 0.45.0, 0.46.0, 0.47.0, 0.47.1, 0.47.2, 0.47.3, 0.47.4, 0.48.0, 0.48.1, 0.49.0, 0.50.0, 0.50.1, 0.50.2, 0.51.0, 0.52.0, 0.52.1, 0.52.2, 0.53.0, 0.54.0, 0.55.0, 0.56.0, 0.57.0, 0.57.1, 0.57.2, 0.57.3, 0.58.0, 0.59.0, 0.60.0, 0.61.0, 0.62.0, 0.62.1, 0.63.0, 0.63.1, 0.64.0, 0.65.0, 0.65.1, 0.65.2, 0.66.0, 0.67.0, 0.67.1, 0.68.0, 0.68.1, 0.69.0, 0.69.1, 0.69.2, 0.70.0, 0.71.0, 0.72.0, 0.73.0, 0.73.1, 0.74.0, 0.74.1, 0.75.0, 0.76.0, 0.77.0, 0.78.0, 0.79.0, 0.80.0, 0.81.0, 0.81.1, 0.82.0, 0.83.0, 0.84.0, 0.84.1, 0.84.2, 0.85.0, 0.85.1, 0.86.0, 0.87.0, 0.88.0, 0.89.0, 1.0.0, 1.1.0, 1.2.0, 1.3.0, 1.3.1, 1.4.0, 1.5.0, 1.5.1, 1.6.0rc3, 1.6.0rc4, 1.6.0, 1.7.0, 1.8.0rc1, 1.8.0, 1.8.1rc1, 1.8.1, 1.9.0rc1, 1.9.0, 1.9.1rc1, 1.9.1rc2, 1.9.1, 1.9.2rc1, 1.9.2, 1.10.0rc1, 1.10.0rc2, 1.10.0)
# ERROR: No matching distribution found for streamlit==1.20.0
# [^However the above *does* suggest that "pip install" happily reads from a
# 'Streamlit' "requirements.txt" file -- perhaps even suggesting that
# Streamlit's
# "https://docs.streamlit.io/streamlit-community-cloud/deploy-your-app/app-dependencies"
# actually acts through "pip install"? HD as at 2023-11-09 18:48GMT^]
# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$ /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR/bin/python
# Python 3.9.18 (main, Nov  9 2023, 18:02:54) 
# [GCC 9.3.1 20200408 (Red Hat 9.3.1-2)] on linux
# Type "help", "copyright", "credits" or "license" for more information.
# >>> 
# KeyboardInterrupt
# >>> exit()
# [^<-- Python v3.9.18 i.e. "latest patch available at python.org" as per ">
# reticulate::install_python()" working happily apparently indeed -- HD as at
# 2023-11-09 18:57GMT.^]
# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$
# ====


# ^As at 2023-11-09 18:27GMT (HD) next: see last line in lines copy--pasted from Workbench Console -- alternatively:
# - Use "> use_virtualenv()" [REF "> ?reticulate::install_python()"]?
# - 'Just' re-apply "> virtualenv_create()" on 'old' virtual environment "r-reticulate"^


# As at 2023-11-13 16:24GMT (HD):
# ====
# As per "> ?reticulate::install_python()" section "Details":
# --
# # select the latest 3.9.* patch installed locally
# virtualenv_create("my-environment", version = "3.9:latest")
# --
# ... and as per "> reticulate::virtualenv-tools()" section "Usage":
# --
# virtualenv_create(
#   envname = NULL,
#   []
#   version = NULL,
#   [...]
# --
# ... so we'd want to "select the latest 3.9.* patch installed locally"
# explicitly for "> virtualenv_create()" indeed, even though for ">
# reticulate::install_python()", ""default value for argument 'version =
# "3.9:latest"'"" (see line 688 of this script above as at 2023-11-13 16:54GMT
# [HD]).
# ~==>:
# 
reticulate::virtualenv_create("r-reticulate4NDD_SMR", version = "3.9:latest")
# --> As at 2023-11-13 17:12GMT (HD):
# --
# > reticulate::virtualenv_create("r-reticulate4NDD_SMR", version = "3.9:latest")
# virtualenv: r-reticulate4NDD_SMR
# >
# --
# Then, as was done in "> reticulate::install_python()" section "Details" as well, run "> use_virtualenv()" again:
# 
reticulate::use_virtualenv("r-reticulate4NDD_SMR")


# As at 2023-11-13 18:51GMT (HD), after "Open[ing] a new R session" with <R> version 4.3.2:
# ====
# R version 4.3.2 (2023-10-31) -- "Eye Holes"
# Copyright (C) 2023 The R Foundation for Statistical Computing
# Platform: x86_64-pc-linux-gnu (64-bit)
# 
# R is free software and comes with ABSOLUTELY NO WARRANTY.
# You are welcome to redistribute it under certain conditions.
# Type 'license()' or 'licence()' for distribution details.
# 
# Natural language support but running in an English locale
# 
# R is a collaborative project with many contributors.
# Type 'contributors()' for more information and
# 'citation()' on how to cite R or R packages in publications.
# 
# Type 'demo()' for some demos, 'help()' for on-line help, or
# 'help.start()' for an HTML browser interface to help.
# Type 'q()' to quit R.
# 
# # Bootstrapping renv 1.0.3 ---------------------------------------------------
# - Downloading renv ... OK
# - Installing renv  ... OK
# 
# ℹ Using R 4.3.2 (lockfile was generated with R 4.2.3)
# - Project '~/SOFTWARE/omicsynthcustomanalysis/NDD_SMR' loaded. [renv 1.0.3]
# - One or more packages recorded in the lockfile are not installed.
# - Use `renv::status()` for more details.
# >
# ====
# Then, as per line 741 of this script above, in Workbench Terminal:
# --
# [hermanus.draisma@rstudio NDD_SMR]$ ls -laht /home/hermanus.draisma/.pyenv/versions/
#   total 1.5K
# drwxr-xr-x 6 hermanus.draisma domain users 6 Nov  9 18:03 3.9.18
# drwxr-xr-x 3 hermanus.draisma domain users 3 Nov  9 18:03 .
# drwxr-xr-x 5 hermanus.draisma domain users 5 Nov  9 18:03 ..
# [hermanus.draisma@rstudio NDD_SMR]$ pwd
# /home/hermanus.draisma/SOFTWARE/omicsynthcustomanalysis/NDD_SMR
# [hermanus.draisma@rstudio NDD_SMR]$ source /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR/bin/activate
# (r-reticulate4NDD_SMR) [hermanus.draisma@rstudio NDD_SMR]$
# --

# As at 2023-11-14 17:22GMT (HD):
# ====
# R version 4.2.3 (2023-03-15) -- "Shortstop Beagle"
# Copyright (C) 2023 The R Foundation for Statistical Computing
# Platform: x86_64-pc-linux-gnu (64-bit)
# 
# R is free software and comes with ABSOLUTELY NO WARRANTY.
# You are welcome to redistribute it under certain conditions.
# Type 'license()' or 'licence()' for distribution details.
# 
# Natural language support but running in an English locale
# 
# R is a collaborative project with many contributors.
# Type 'contributors()' for more information and
# 'citation()' on how to cite R or R packages in publications.
# 
# Type 'demo()' for some demos, 'help()' for on-line help, or
# 'help.start()' for an HTML browser interface to help.
# Type 'q()' to quit R.
# 
# - Project '~/SOFTWARE/omicsynthcustomanalysis/NDD_SMR' loaded. [renv 1.0.3]
# 
# NOTE: Dependency discovery took 16 seconds during snapshot.
# Consider using .renvignore to ignore files, or switching to explicit snapshots.
# See `?renv::dependencies` for more information.
# 
# - The project is out-of-sync -- use `renv::status()` for details.
# > renv::status()
# The following package(s) are missing:
#   
#   package         installed recorded used
# data.table      n         n        y   
# foreach         n         n        y   
# GenomicFeatures n         n        y   
# ggplot2         n         n        y   
# rhdf5           n         n        y   
# 
# See ?renv::status() for advice on resolving these issues.
# > reticulate::virtualenv_install(envname = "r-reticulate4NDD_SMR_py39", python_version = ">3.7", packages = "streamlit==1.20.0")
# Using Python: /home/hermanus.draisma/.pyenv/versions/3.9.18/bin/python3.9
# Creating virtual environment 'r-reticulate4NDD_SMR_py39' ... 
# + /home/hermanus.draisma/.pyenv/versions/3.9.18/bin/python3.9 -m venv /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR_py39
# Done!
#   Installing packages: pip, wheel, setuptools
# + /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR_py39/bin/python -m pip install --upgrade pip wheel setuptools
# Requirement already satisfied: pip in /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR_py39/lib/python3.9/site-packages (23.0.1)
# Collecting pip
# Using cached pip-23.3.1-py3-none-any.whl (2.1 MB)
# Collecting wheel
# [... -- HD]
# Successfully installed pip-23.3.1 setuptools-68.2.2 wheel-0.41.3
# Virtual environment 'r-reticulate4NDD_SMR_py39' successfully created.
# Using virtual environment 'r-reticulate4NDD_SMR_py39' ...
# + /home/hermanus.draisma/.virtualenvs/r-reticulate4NDD_SMR_py39/bin/python -m pip install --upgrade --no-user 'streamlit==1.20.0'
# Collecting streamlit==1.20.0
# Using cached streamlit-1.20.0-py2.py3-none-any.whl (9.6 MB)
# Collecting altair<5,>=3.2.0 (from streamlit==1.20.0)
# [... -- HD]
# Using cached smmap-5.0.1-py3-none-any.whl (24 kB)
# Installing collected packages: pytz, zipp, watchdog, validators, urllib3, tzlocal, typing-extensions, tornado, toolz, toml, smmap, six, semver, rpds-py, pympler, pygments, protobuf, pillow, packaging, numpy, mdurl, MarkupSafe, idna, entrypoints, click, charset-normalizer, certifi, cachetools, blinker, attrs, requests, referencing, python-dateutil, pyarrow, markdown-it-py, jinja2, importlib-metadata, gitdb, rich, pydeck, pandas, jsonschema-specifications, gitpython, jsonschema, altair, streamlit
# Successfully installed MarkupSafe-2.1.3 altair-4.2.2 attrs-23.1.0 blinker-1.7.0 cachetools-5.3.2 certifi-2023.7.22 charset-normalizer-3.3.2 click-8.1.7 entrypoints-0.4 gitdb-4.0.11 gitpython-3.1.40 idna-3.4 importlib-metadata-6.8.0 jinja2-3.1.2 jsonschema-4.19.2 jsonschema-specifications-2023.7.1 markdown-it-py-3.0.0 mdurl-0.1.2 numpy-1.26.2 packaging-23.2 pandas-1.5.3 pillow-10.1.0 protobuf-3.20.3 pyarrow-14.0.1 pydeck-0.8.1b0 pygments-2.16.1 pympler-1.0.1 python-dateutil-2.8.2 pytz-2023.3.post1 referencing-0.30.2 requests-2.31.0 rich-13.6.0 rpds-py-0.12.0 semver-3.0.2 six-1.16.0 smmap-5.0.1 streamlit-1.20.0 toml-0.10.2 toolz-0.12.0 tornado-6.3.3 typing-extensions-4.8.0 tzlocal-5.2 urllib3-2.1.0 validators-0.22.0 watchdog-3.0.0 zipp-3.17.0
# >
# ====


# As at 2023-11-16 16:14GMT (HD), in RStudio Desktop under Ubuntu 22.04 LTS as on Brutus, after upgrading to latest versions of <R> and Rstudio available, i.e.:
# --
# RStudio 2023.09.1+494 "Desert Sunflower" Release (cd7011dce393115d3a7c3db799dda4b1c7e88711, 2023-10-16) for Ubuntu Jammy
# Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) rstudio/2023.09.1+494 Chrome/116.0.5845.190 Electron/26.2.4 Safari/537.36
# --
# ...:
# ====
# R version 4.3.2 (2023-10-31) -- "Eye Holes"
# Copyright (C) 2023 The R Foundation for Statistical Computing
# Platform: x86_64-pc-linux-gnu (64-bit)
# 
# R is free software and comes with ABSOLUTELY NO WARRANTY.
# You are welcome to redistribute it under certain conditions.
# Type 'license()' or 'licence()' for distribution details.
# 
# Natural language support but running in an English locale
# 
# R is a collaborative project with many contributors.
# Type 'contributors()' for more information and
# 'citation()' on how to cite R or R packages in publications.
# 
# Type 'demo()' for some demos, 'help()' for on-line help, or
# 'help.start()' for an HTML browser interface to help.
# Type 'q()' to quit R.
# 
# > renv::activate()
# Error in loadNamespace(x) : there is no package called ‘renv’
# [After having ticked the box again for "Tools" --> "Project Options..." -->
# "Environments" --> "Use renv with this project" in RStudio (HD as at
# 2023-11-16 16:23GMT):]
# > library(renv)
# 
# Attaching package: ‘renv’
# 
# The following objects are masked from ‘package:stats’:
#   
#   embed, update
# 
# The following objects are masked from ‘package:utils’:
#   
#   history, upgrade
# 
# The following objects are masked from ‘package:base’:
#   
#   autoload, load, remove
# 
# > renv::activate()
# 
# Restarting R session...
# 
# - Project '/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR' loaded. [renv 1.0.3]
# - The project is out-of-sync -- use `renv::status()` for details.
# > renv::status()
# This project does not contain a lockfile.
# Use `renv::snapshot()` to create a lockfile.
# > renv::snapshot()
# 
# NOTE: Dependency discovery took 12 seconds during snapshot.
# Consider using .renvignore to ignore files, or switching to explicit snapshots.
# See `?renv::dependencies` for more information.
# 
# The following required packages are not installed:
#   - data.table
# - foreach
# - GenomicFeatures
# - ggplot2
# - rhdf5
# Packages must first be installed before renv can snapshot them.
# Use `renv::dependencies()` to see where this package is used in your project.
# 
# What do you want to do? 
#   
#   1: Snapshot, just using the currently installed packages.
# 2: Install the packages, then snapshot.
# 3: Cancel, and resolve the situation on your own.
# 
# Selection: 1
# The following package(s) will be updated in the lockfile:
#   
#   # CRAN -----------------------------------------------------------------------
# - renv   [* -> 1.0.3]
# 
# The version of R recorded in the lockfile will be updated:
#   - R      [* -> 4.3.2]
# 
# - Lockfile written to "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/renv.lock".
# > # Load required packages
#   > # 
#   > library(reticulate)
# Error in library(reticulate) : there is no package called ‘reticulate’
# > renv::install("reticulate")
# # Downloading packages -------------------------------------------------------
# - Downloading reticulate from CRAN ...          OK [1.5 Mb in 1.3s]
# - Downloading Rcpp from CRAN ...                OK [2.9 Mb in 2.4s]
# - Downloading RcppTOML from CRAN ...            OK [file is up to date]
# - Downloading here from CRAN ...                OK [file is up to date]
# - Downloading rprojroot from CRAN ...           OK [58.5 Kb in 0.25s]
# - Downloading jsonlite from CRAN ...            OK [1 Mb in 0.69s]
# - Downloading png from CRAN ...                 OK [file is up to date]
# - Downloading rappdirs from CRAN ...            OK [file is up to date]
# - Downloading rlang from CRAN ...               OK [745.6 Kb in 0.82s]
# - Downloading withr from CRAN ...               OK [99.9 Kb in 0.26s]
# Successfully downloaded 10 packages in 8.4 seconds.
# 
# The following package(s) will be installed:
#   - here       [1.0.1]
# - jsonlite   [1.8.7]
# - png        [0.1-8]
# - rappdirs   [0.3.3]
# - Rcpp       [1.0.11]
# - RcppTOML   [0.2.2]
# - reticulate [1.34.0]
# - rlang      [1.1.2]
# - rprojroot  [2.0.4]
# - withr      [2.5.2]
# These packages will be installed into "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/renv/library/R-4.3/x86_64-pc-linux-gnu".
# 
# Do you want to proceed? [Y/n]: Y
# 
# # Installing packages --------------------------------------------------------
# - Installing Rcpp ...                           OK [built from source and cached in 19s]
# - Installing RcppTOML ...                       OK [built from source and cached in 8.2s]
# - Installing rprojroot ...                      OK [built from source and cached in 1.2s]
# - Installing here ...                           OK [built from source and cached in 1.0s]
# - Installing jsonlite ...                       OK [built from source and cached in 3.4s]
# - Installing png ...                            OK [built from source and cached in 1.3s]
# - Installing rappdirs ...                       OK [built from source and cached in 1.2s]
# - Installing rlang ...                          OK [built from source and cached in 8.4s]
# - Installing withr ...                          OK [built from source and cached in 1.4s]
# - Installing reticulate ...                     OK [built from source and cached in 15s]
# Successfully installed 10 packages in 1 minute.
# > reticulate::virtualenv_install(envname = "r-reticulate_brutus", python_version = ">3.7", packages = "streamlit==1.20.0")
# Error: Tools for managing Python virtual environments are not installed.
# 
# Install venv with:
#   $ sudo apt-get install python3-venv
# 
# >
# ====
# 
# As at 2023-11-16 16:45GMT (HD), in RStudio Desktop Terminal as on Brutus:
# --
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ which streamlit
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ which python
# /home/hammie/anaconda3/bin/python
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ python --version
# Python 3.9.12
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ streamlit --version
# streamlit: command not found
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ ls -laht /home/hermanus.draisma/.pyenv/versions/
#   ls: cannot access '/home/hermanus.draisma/.pyenv/versions/': No such file or directory
# ["/home/hammie/.pyenv/versions/" doesn't seem to exist either -- HD as at 2023-11-16 17:20GMT]
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ sudo apt-get install python3-venv
# [sudo] password for hammie: 
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following packages were automatically installed and are no longer required:
#   app-install-data-partner bsdmainutils coinor-libcbc3 coinor-libcgl1 coinor-libclp1 coinor-libcoinmp1v5 coinor-libcoinutils3v5 coinor-libosi1v5 crda docker-scan-plugin g++-9 gfortran-9 gir1.2-clutter-1.0
#   gir1.2-clutter-gst-3.0 gir1.2-cogl-1.0 gir1.2-coglpango-1.0 gir1.2-gnomebluetooth-1.0 gir1.2-gtkclutter-1.0 gir1.2-handy-0.0 gnome-getting-started-docs gnome-screenshot ippusbxd libamtk-5-0 libamtk-5-common libaom0
#   libboost-date-time1.71.0 libboost-filesystem1.71.0 libboost-iostreams1.71.0 libboost-locale1.71.0 libboost-thread1.71.0 libbrlapi0.7 libcamel-1.2-62 libcbor0.6 libcdio18 libclang-10-dev libclang-common-10-dev
#   libclang1-10 libcmis-0.5-5v5 libcodec2-0.9 libdc1394-22 libdeflate-dev libdns-export1109 libdvdread7 libedataserver-1.2-24 libedataserverui-1.2-2 libextutils-pkgconfig-perl libfftw3-double3 libfluidsynth2 libfwupdplugin1
#   libgdk-pixbuf-xlib-2.0-0 libgdk-pixbuf2.0-0 libgfortran-9-dev libgupnp-1.2-0 libhandy-0.0-0 libhogweed5 libidn11 libilmbase24 libisl22 libjbig-dev libjson-c4 libjsoncpp1 libllvm12 libmms0 libmozjs-68-0 libmpdec2
#   libmusicbrainz5-2 libmusicbrainz5cc2v5 libmysqlclient21 libneon27-gnutls libnettle7 libntfs-3g883 libobjc-9-dev libofa0 libopenexr24 libpcre2-posix2 libpgm-5.2-0 libphonenumber7 libpoppler97 libprotobuf17 libpython3.8
#   libpython3.8-dev libpython3.8-minimal libpython3.8-stdlib libqpdf26 libraw19 libsane libsrt1 libstdc++-9-dev libtepl-4-0 libtiff-dev libtiffxx5 libtracker-control-2.0-0 libtracker-miner-2.0-0 libtracker-sparql-2.0-0
#   libusrsctp1 libvpx6 libwebp6 libwmf0.2-7 libx264-155 libx265-179 libx86emu2 libxmlb1 libxmlsec1 libxmlsec1-nss ltrace lz4 mysql-common ncal popularity-contest python3-entrypoints python3-requests-unixsocket
#   python3-simplejson python3.8 python3.8-dev python3.8-minimal syslinux syslinux-common syslinux-legacy vino x11proto-xext-dev xul-ext-ubufox zenpower
# Use 'sudo apt autoremove' to remove them.
# The following additional packages will be installed:
#   python3-pip-whl python3-setuptools-whl python3.10-venv
# The following packages will be REMOVED
#   python-pip-whl
# The following NEW packages will be installed
#   python3-pip-whl python3-setuptools-whl python3-venv python3.10-venv
# 0 to upgrade, 4 to newly install, 1 to remove and 21 not to upgrade.
# Need to get 2,474 kB of archives.
# After this operation, 579 kB of additional disk space will be used.
# Do you want to continue? [Y/n] Y
# Get:1 http://gb.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 python3-pip-whl all 22.0.2+dfsg-1ubuntu0.4 [1,680 kB]
# Get:2 http://gb.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 python3-setuptools-whl all 59.6.0-1.2ubuntu0.22.04.1 [788 kB]
# Get:3 http://gb.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 python3.10-venv amd64 3.10.12-1~22.04.2 [5,724 B]
# Get:4 http://gb.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 python3-venv amd64 3.10.6-1~22.04 [1,038 B]
# Fetched 2,474 kB in 2s (1,130 kB/s)      
# (Reading database ... 341207 files and directories currently installed.)
# Removing python-pip-whl (20.0.2-5ubuntu1.8) ...
# Selecting previously unselected package python3-pip-whl.
# (Reading database ... 341176 files and directories currently installed.)
# Preparing to unpack .../python3-pip-whl_22.0.2+dfsg-1ubuntu0.4_all.deb ...
# Unpacking python3-pip-whl (22.0.2+dfsg-1ubuntu0.4) ...
# Selecting previously unselected package python3-setuptools-whl.
# Preparing to unpack .../python3-setuptools-whl_59.6.0-1.2ubuntu0.22.04.1_all.deb ...
# Unpacking python3-setuptools-whl (59.6.0-1.2ubuntu0.22.04.1) ...
# Selecting previously unselected package python3.10-venv.
# Preparing to unpack .../python3.10-venv_3.10.12-1~22.04.2_amd64.deb ...
# Unpacking python3.10-venv (3.10.12-1~22.04.2) ...
# Selecting previously unselected package python3-venv.
# Preparing to unpack .../python3-venv_3.10.6-1~22.04_amd64.deb ...
# Unpacking python3-venv (3.10.6-1~22.04) ...
# Setting up python3-setuptools-whl (59.6.0-1.2ubuntu0.22.04.1) ...
# Setting up python3-pip-whl (22.0.2+dfsg-1ubuntu0.4) ...
# Setting up python3.10-venv (3.10.12-1~22.04.2) ...
# Setting up python3-venv (3.10.6-1~22.04) ...
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$
# --
# After this, "venv" still doesn't appear to be recognized in RStudio Desktop Console as on Brutus, as still (HD as at 2023-11-16 17:24GMT):
# ====
# > reticulate::virtualenv_install(envname = "r-reticulate_brutus", python_version = ">3.7", packages = "streamlit==1.20.0")
# Error: Tools for managing Python virtual environments are not installed.
# 
# Install venv with:
# $ sudo apt-get install python3-venv
# 
# >
# ====
# ==> actually reloading the <R>Project, or restarting RStudio might help???
# --> just reloading the RProject doesn't seem to work/(be sufficient), and neither did restarting RStudio, so ...:
# 1.) Try restarting the Brutus
# 2.) Try installing venv again, but this time from system i.e. Ubuntu Terminal?


# As at 2023-11-17 10:27GMT (HD):
# --
# > reticulate::py_version()
# NULL
# > reticulate::py_available()
# [1] FALSE
# >
# --
# --> That's interesting, 'right' -- do we still need to use reticulate::install_python()? <-- Apparently we've done it before, 'albeit' on the Workbench Console [REF 'log' text dd "# As at 2023-11-09 18:21GMT (HD), as copy--pasted from Workbench Console" at lines 8 and onwards of this script above]
# (Note: *might* be able to use reticulate::use_python() as well, to use a version of Python as *not* "installed by the install_python() helper function" [REF "> ?reticulate::use_python"], but let's not try that in the first instance.)
# -->:
# 
# install_python()
# --> As at 2023-11-17 10:54GMT (HD):
# ====
# > install_python()
# trying URL 'https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer'
# Content type 'text/plain; charset=utf-8' length 2827 bytes
# ==================================================
#   downloaded 2827 bytes
# 
# Installing pyenv ...
# Cloning into '/home/hammie/.local/share/r-reticulate/pyenv'...
# Cloning into '/home/hammie/.local/share/r-reticulate/pyenv/plugins/pyenv-doctor'...
# Cloning into '/home/hammie/.local/share/r-reticulate/pyenv/plugins/pyenv-update'...
# Cloning into '/home/hammie/.local/share/r-reticulate/pyenv/plugins/pyenv-virtualenv'...
# 
# WARNING: seems you still have not added 'pyenv' to the load path.
# 
# # Load pyenv automatically by appending
# # the following to 
# # ~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
# # and ~/.bashrc (for interactive shells) :
# 
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# 
# # Restart your shell for the changes to take effect.
# 
# # Load pyenv-virtualenv automatically by adding
# # the following to ~/.bashrc:
# 
# eval "$(pyenv virtualenv-init -)"
# 
# Done! pyenv has been installed to '/home/hammie/.local/share/r-reticulate/pyenv/bin/pyenv'.
# Cloning into '/home/hammie/.pyenv/plugins/pyenv-update'...
# + /home/hammie/.local/share/r-reticulate/pyenv/bin/pyenv update
# + /home/hammie/.local/share/r-reticulate/pyenv/bin/pyenv install --skip-existing 3.9.18
# Downloading Python-3.9.18.tar.xz...
# -> https://www.python.org/ftp/python/3.9.18/Python-3.9.18.tar.xz
# Installing Python-3.9.18...
# Traceback (most recent call last):
#   File "<string>", line 1, in <module>
#   File "/home/hammie/.pyenv/versions/3.9.18/lib/python3.9/sqlite3/__init__.py", line 57, in <module>
#   from sqlite3.dbapi2 import *
#   File "/home/hammie/.pyenv/versions/3.9.18/lib/python3.9/sqlite3/dbapi2.py", line 27, in <module>
#   from _sqlite3 import *
#   ModuleNotFoundError: No module named '_sqlite3'
# WARNING: The Python sqlite3 extension was not compiled. Missing the SQLite3 lib?
#   Traceback (most recent call last):
#   File "<string>", line 1, in <module>
#   File "/home/hammie/.pyenv/versions/3.9.18/lib/python3.9/tkinter/__init__.py", line 37, in <module>
#   import _tkinter # If this fails your Python may not be configured for Tk
# ModuleNotFoundError: No module named '_tkinter'
# WARNING: The Python tkinter extension was not compiled and GUI subsystem has been detected. Missing the Tk toolkit?
#   Installed Python-3.9.18 to /home/hammie/.pyenv/versions/3.9.18
# [1] "/home/hammie/.pyenv/versions/3.9.18/bin/python3.9"
# >
# ====
# Interestingly, after this still:
# ====
# > reticulate::py_available()
# [1] FALSE
# > reticulate::py_version()
# NULL
# >
# ====
# ...; however, nevertheless [--> perhaps reticulate::virtualenv_install() uses
# use_python() or use_python_version() internally??]:
# ====
# > reticulate::virtualenv_install(envname = "r-reticulate_brutus", python_version = ">3.7", packages = "streamlit==1.20.0")
# Using Python: /home/hammie/.pyenv/versions/3.9.18/bin/python3.9
# Creating virtual environment 'r-reticulate_brutus' ... 
# + /home/hammie/.pyenv/versions/3.9.18/bin/python3.9 -m venv /home/hammie/.virtualenvs/r-reticulate_brutus
# Done!
#   Installing packages: pip, wheel, setuptools
# + /home/hammie/.virtualenvs/r-reticulate_brutus/bin/python -m pip install --upgrade pip wheel setuptools
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (23.0.1)
# Collecting pip
# Downloading pip-23.3.1-py3-none-any.whl (2.1 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 18.4 MB/s eta 0:00:00
# Collecting wheel
# Downloading wheel-0.41.3-py3-none-any.whl (65 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 65.8/65.8 kB 19.1 MB/s eta 0:00:00
# Requirement already satisfied: setuptools in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (58.1.0)
# Collecting setuptools
# Downloading setuptools-68.2.2-py3-none-any.whl (807 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 807.9/807.9 kB 17.2 MB/s eta 0:00:00
# Installing collected packages: wheel, setuptools, pip
# Attempting uninstall: setuptools
# Found existing installation: setuptools 58.1.0
# Uninstalling setuptools-58.1.0:
#   Successfully uninstalled setuptools-58.1.0
# Attempting uninstall: pip
# Found existing installation: pip 23.0.1
# Uninstalling pip-23.0.1:
#   Successfully uninstalled pip-23.0.1
# Successfully installed pip-23.3.1 setuptools-68.2.2 wheel-0.41.3
# Virtual environment 'r-reticulate_brutus' successfully created.
# Using virtual environment 'r-reticulate_brutus' ...
# + /home/hammie/.virtualenvs/r-reticulate_brutus/bin/python -m pip install --upgrade --no-user 'streamlit==1.20.0'
# Collecting streamlit==1.20.0
# Downloading streamlit-1.20.0-py2.py3-none-any.whl (9.6 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 9.6/9.6 MB 21.0 MB/s eta 0:00:00
# Collecting altair<5,>=3.2.0 (from streamlit==1.20.0)
# Downloading altair-4.2.2-py3-none-any.whl (813 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 813.6/813.6 kB 18.7 MB/s eta 0:00:00
# Collecting blinker>=1.0.0 (from streamlit==1.20.0)
# Downloading blinker-1.7.0-py3-none-any.whl.metadata (1.9 kB)
# Collecting cachetools>=4.0 (from streamlit==1.20.0)
# Downloading cachetools-5.3.2-py3-none-any.whl.metadata (5.2 kB)
# Collecting click>=7.0 (from streamlit==1.20.0)
# Downloading click-8.1.7-py3-none-any.whl.metadata (3.0 kB)
# Collecting importlib-metadata>=1.4 (from streamlit==1.20.0)
# Downloading importlib_metadata-6.8.0-py3-none-any.whl.metadata (5.1 kB)
# Collecting numpy (from streamlit==1.20.0)
# Downloading numpy-1.26.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (61 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.2/61.2 kB 7.4 MB/s eta 0:00:00
# Collecting packaging>=14.1 (from streamlit==1.20.0)
# Downloading packaging-23.2-py3-none-any.whl.metadata (3.2 kB)
# Collecting pandas<2,>=0.25 (from streamlit==1.20.0)
# Downloading pandas-1.5.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (12.2 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 12.2/12.2 MB 20.4 MB/s eta 0:00:00
# Collecting pillow>=6.2.0 (from streamlit==1.20.0)
# Downloading Pillow-10.1.0-cp39-cp39-manylinux_2_28_x86_64.whl.metadata (9.5 kB)
# Collecting protobuf<4,>=3.12 (from streamlit==1.20.0)
# Downloading protobuf-3.20.3-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.whl (1.0 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.0/1.0 MB 17.1 MB/s eta 0:00:00
# Collecting pyarrow>=4.0 (from streamlit==1.20.0)
# Downloading pyarrow-14.0.1-cp39-cp39-manylinux_2_28_x86_64.whl.metadata (3.0 kB)
# Collecting pympler>=0.9 (from streamlit==1.20.0)
# Downloading Pympler-1.0.1-py3-none-any.whl (164 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 164.8/164.8 kB 25.7 MB/s eta 0:00:00
# Collecting python-dateutil (from streamlit==1.20.0)
# Downloading python_dateutil-2.8.2-py2.py3-none-any.whl (247 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 247.7/247.7 kB 17.4 MB/s eta 0:00:00
# Collecting requests>=2.4 (from streamlit==1.20.0)
# Downloading requests-2.31.0-py3-none-any.whl.metadata (4.6 kB)
# Collecting rich>=10.11.0 (from streamlit==1.20.0)
# Downloading rich-13.7.0-py3-none-any.whl.metadata (18 kB)
# Collecting semver (from streamlit==1.20.0)
# Downloading semver-3.0.2-py3-none-any.whl.metadata (5.0 kB)
# Collecting toml (from streamlit==1.20.0)
# Downloading toml-0.10.2-py2.py3-none-any.whl (16 kB)
# Collecting typing-extensions>=3.10.0.0 (from streamlit==1.20.0)
# Downloading typing_extensions-4.8.0-py3-none-any.whl.metadata (3.0 kB)
# Collecting tzlocal>=1.1 (from streamlit==1.20.0)
# Downloading tzlocal-5.2-py3-none-any.whl.metadata (7.8 kB)
# Collecting validators>=0.2 (from streamlit==1.20.0)
# Downloading validators-0.22.0-py3-none-any.whl.metadata (4.7 kB)
# Collecting gitpython!=3.1.19 (from streamlit==1.20.0)
# Downloading GitPython-3.1.40-py3-none-any.whl.metadata (12 kB)
# Collecting pydeck>=0.1.dev5 (from streamlit==1.20.0)
# Downloading pydeck-0.8.1b0-py2.py3-none-any.whl (4.8 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 4.8/4.8 MB 19.6 MB/s eta 0:00:00
# Collecting tornado>=6.0.3 (from streamlit==1.20.0)
# Downloading tornado-6.3.3-cp38-abi3-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (2.5 kB)
# Collecting watchdog (from streamlit==1.20.0)
# Downloading watchdog-3.0.0-py3-none-manylinux2014_x86_64.whl (82 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 82.1/82.1 kB 13.2 MB/s eta 0:00:00
# Collecting entrypoints (from altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading entrypoints-0.4-py3-none-any.whl (5.3 kB)
# Collecting jinja2 (from altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading Jinja2-3.1.2-py3-none-any.whl (133 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 133.1/133.1 kB 17.3 MB/s eta 0:00:00
# Collecting jsonschema>=3.0 (from altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading jsonschema-4.20.0-py3-none-any.whl.metadata (8.1 kB)
# Collecting toolz (from altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading toolz-0.12.0-py3-none-any.whl (55 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 55.8/55.8 kB 7.3 MB/s eta 0:00:00
# Collecting gitdb<5,>=4.0.1 (from gitpython!=3.1.19->streamlit==1.20.0)
# Downloading gitdb-4.0.11-py3-none-any.whl.metadata (1.2 kB)
# Collecting zipp>=0.5 (from importlib-metadata>=1.4->streamlit==1.20.0)
# Downloading zipp-3.17.0-py3-none-any.whl.metadata (3.7 kB)
# Collecting pytz>=2020.1 (from pandas<2,>=0.25->streamlit==1.20.0)
# Downloading pytz-2023.3.post1-py2.py3-none-any.whl.metadata (22 kB)
# Collecting six>=1.5 (from python-dateutil->streamlit==1.20.0)
# Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
# Collecting charset-normalizer<4,>=2 (from requests>=2.4->streamlit==1.20.0)
# Downloading charset_normalizer-3.3.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (33 kB)
# Collecting idna<4,>=2.5 (from requests>=2.4->streamlit==1.20.0)
# Downloading idna-3.4-py3-none-any.whl (61 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.5/61.5 kB 11.8 MB/s eta 0:00:00
# Collecting urllib3<3,>=1.21.1 (from requests>=2.4->streamlit==1.20.0)
# Downloading urllib3-2.1.0-py3-none-any.whl.metadata (6.4 kB)
# Collecting certifi>=2017.4.17 (from requests>=2.4->streamlit==1.20.0)
# Downloading certifi-2023.7.22-py3-none-any.whl.metadata (2.2 kB)
# Collecting markdown-it-py>=2.2.0 (from rich>=10.11.0->streamlit==1.20.0)
# Downloading markdown_it_py-3.0.0-py3-none-any.whl.metadata (6.9 kB)
# Collecting pygments<3.0.0,>=2.13.0 (from rich>=10.11.0->streamlit==1.20.0)
# Downloading Pygments-2.16.1-py3-none-any.whl.metadata (2.5 kB)
# Collecting smmap<6,>=3.0.1 (from gitdb<5,>=4.0.1->gitpython!=3.1.19->streamlit==1.20.0)
# Downloading smmap-5.0.1-py3-none-any.whl.metadata (4.3 kB)
# Collecting MarkupSafe>=2.0 (from jinja2->altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading MarkupSafe-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (3.0 kB)
# Collecting attrs>=22.2.0 (from jsonschema>=3.0->altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading attrs-23.1.0-py3-none-any.whl (61 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.2/61.2 kB 11.4 MB/s eta 0:00:00
# Collecting jsonschema-specifications>=2023.03.6 (from jsonschema>=3.0->altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading jsonschema_specifications-2023.11.1-py3-none-any.whl.metadata (2.8 kB)
# Collecting referencing>=0.28.4 (from jsonschema>=3.0->altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading referencing-0.31.0-py3-none-any.whl.metadata (2.6 kB)
# Collecting rpds-py>=0.7.1 (from jsonschema>=3.0->altair<5,>=3.2.0->streamlit==1.20.0)
# Downloading rpds_py-0.13.0-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (3.7 kB)
# Collecting mdurl~=0.1 (from markdown-it-py>=2.2.0->rich>=10.11.0->streamlit==1.20.0)
# Downloading mdurl-0.1.2-py3-none-any.whl (10.0 kB)
# Downloading blinker-1.7.0-py3-none-any.whl (13 kB)
# Downloading cachetools-5.3.2-py3-none-any.whl (9.3 kB)
# Downloading click-8.1.7-py3-none-any.whl (97 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 97.9/97.9 kB 14.5 MB/s eta 0:00:00
# Downloading GitPython-3.1.40-py3-none-any.whl (190 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 190.6/190.6 kB 18.8 MB/s eta 0:00:00
# Downloading importlib_metadata-6.8.0-py3-none-any.whl (22 kB)
# Downloading packaging-23.2-py3-none-any.whl (53 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 53.0/53.0 kB 7.5 MB/s eta 0:00:00
# Downloading numpy-1.26.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (18.2 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 18.2/18.2 MB 21.7 MB/s eta 0:00:00
# Downloading Pillow-10.1.0-cp39-cp39-manylinux_2_28_x86_64.whl (3.6 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 3.6/3.6 MB 19.9 MB/s eta 0:00:00
# Downloading pyarrow-14.0.1-cp39-cp39-manylinux_2_28_x86_64.whl (38.0 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 38.0/38.0 MB 22.1 MB/s eta 0:00:00
# Downloading requests-2.31.0-py3-none-any.whl (62 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.6/62.6 kB 8.7 MB/s eta 0:00:00
# Downloading rich-13.7.0-py3-none-any.whl (240 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 240.6/240.6 kB 12.3 MB/s eta 0:00:00
# Downloading tornado-6.3.3-cp38-abi3-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl (427 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 427.7/427.7 kB 13.4 MB/s eta 0:00:00
# Downloading typing_extensions-4.8.0-py3-none-any.whl (31 kB)
# Downloading tzlocal-5.2-py3-none-any.whl (17 kB)
# Downloading validators-0.22.0-py3-none-any.whl (26 kB)
# Downloading semver-3.0.2-py3-none-any.whl (17 kB)
# Downloading certifi-2023.7.22-py3-none-any.whl (158 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 158.3/158.3 kB 25.5 MB/s eta 0:00:00
# Downloading charset_normalizer-3.3.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (142 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 142.3/142.3 kB 23.5 MB/s eta 0:00:00
# Downloading gitdb-4.0.11-py3-none-any.whl (62 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.7/62.7 kB 13.6 MB/s eta 0:00:00
# Downloading jsonschema-4.20.0-py3-none-any.whl (84 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 84.7/84.7 kB 18.9 MB/s eta 0:00:00
# Downloading markdown_it_py-3.0.0-py3-none-any.whl (87 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 87.5/87.5 kB 19.3 MB/s eta 0:00:00
# Downloading Pygments-2.16.1-py3-none-any.whl (1.2 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.2/1.2 MB 19.9 MB/s eta 0:00:00
# Downloading pytz-2023.3.post1-py2.py3-none-any.whl (502 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 502.5/502.5 kB 16.6 MB/s eta 0:00:00
# Downloading urllib3-2.1.0-py3-none-any.whl (104 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 104.6/104.6 kB 14.7 MB/s eta 0:00:00
# Downloading zipp-3.17.0-py3-none-any.whl (7.4 kB)
# Downloading jsonschema_specifications-2023.11.1-py3-none-any.whl (17 kB)
# Downloading MarkupSafe-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (25 kB)
# Downloading referencing-0.31.0-py3-none-any.whl (25 kB)
# Downloading rpds_py-0.13.0-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.2 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.2/1.2 MB 19.2 MB/s eta 0:00:00
# Downloading smmap-5.0.1-py3-none-any.whl (24 kB)
# Installing collected packages: pytz, zipp, watchdog, validators, urllib3, tzlocal, typing-extensions, tornado, toolz, toml, smmap, six, semver, rpds-py, pympler, pygments, protobuf, pillow, packaging, numpy, mdurl, MarkupSafe, idna, entrypoints, click, charset-normalizer, certifi, cachetools, blinker, attrs, requests, referencing, python-dateutil, pyarrow, markdown-it-py, jinja2, importlib-metadata, gitdb, rich, pydeck, pandas, jsonschema-specifications, gitpython, jsonschema, altair, streamlit
# Successfully installed MarkupSafe-2.1.3 altair-4.2.2 attrs-23.1.0 blinker-1.7.0 cachetools-5.3.2 certifi-2023.7.22 charset-normalizer-3.3.2 click-8.1.7 entrypoints-0.4 gitdb-4.0.11 gitpython-3.1.40 idna-3.4 importlib-metadata-6.8.0 jinja2-3.1.2 jsonschema-4.20.0 jsonschema-specifications-2023.11.1 markdown-it-py-3.0.0 mdurl-0.1.2 numpy-1.26.2 packaging-23.2 pandas-1.5.3 pillow-10.1.0 protobuf-3.20.3 pyarrow-14.0.1 pydeck-0.8.1b0 pygments-2.16.1 pympler-1.0.1 python-dateutil-2.8.2 pytz-2023.3.post1 referencing-0.31.0 requests-2.31.0 rich-13.7.0 rpds-py-0.13.0 semver-3.0.2 six-1.16.0 smmap-5.0.1 streamlit-1.20.0 toml-0.10.2 toolz-0.12.0 tornado-6.3.3 typing-extensions-4.8.0 tzlocal-5.2 urllib3-2.1.0 validators-0.22.0 watchdog-3.0.0 zipp-3.17.0
# >
# ====


# As at 2023-11-17 6PM, in RStudio Desktop Terminal as on Brutus, analogous to line 197 above i.e. analogous to for "# (r-reticulate) [hermanus.draisma@rstudio NDD_SMR]$":
# ====
# (r-reticulate_brutus) (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ /home/hammie/.virtualenvs/r-reticulate_brutus/bin/python -m pip install -r ./requirements.txt
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from -r ./requirements.txt (line 1)) (23.3.1)
# Requirement already satisfied: pandas in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from -r ./requirements.txt (line 2)) (1.5.3)
# Collecting scipy (from -r ./requirements.txt (line 3))
# Downloading scipy-1.11.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (60 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 60.4/60.4 kB 2.5 MB/s eta 0:00:00
# Requirement already satisfied: streamlit==1.20.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from -r ./requirements.txt (line 4)) (1.20.0)
# Collecting google (from -r ./requirements.txt (line 5))
# Downloading google-3.0.0-py2.py3-none-any.whl (45 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 45.3/45.3 kB 8.4 MB/s eta 0:00:00
# Collecting streamlit-aggrid==0.2.3.post2 (from -r ./requirements.txt (line 6))
# Downloading streamlit_aggrid-0.2.3.post2-py3-none-any.whl (3.5 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 3.5/3.5 MB 15.2 MB/s eta 0:00:00
# Collecting gspread==5.7.2 (from -r ./requirements.txt (line 7))
# Downloading gspread-5.7.2-py3-none-any.whl (40 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 40.5/40.5 kB 5.3 MB/s eta 0:00:00
# Collecting gspread_pandas==3.2.2 (from -r ./requirements.txt (line 8))
# Downloading gspread_pandas-3.2.2-py2.py3-none-any.whl (26 kB)
# Requirement already satisfied: protobuf==3.20.3 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from -r ./requirements.txt (line 9)) (3.20.3)
# Requirement already satisfied: altair<5,>=3.2.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (4.2.2)
# Requirement already satisfied: blinker>=1.0.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (1.7.0)
# Requirement already satisfied: cachetools>=4.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (5.3.2)
# Requirement already satisfied: click>=7.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (8.1.7)
# Requirement already satisfied: importlib-metadata>=1.4 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (6.8.0)
# Requirement already satisfied: numpy in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (1.26.2)
# Requirement already satisfied: packaging>=14.1 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (23.2)
# Requirement already satisfied: pillow>=6.2.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (10.1.0)
# Requirement already satisfied: pyarrow>=4.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (14.0.1)
# Requirement already satisfied: pympler>=0.9 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (1.0.1)
# Requirement already satisfied: python-dateutil in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (2.8.2)
# Requirement already satisfied: requests>=2.4 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (2.31.0)
# Requirement already satisfied: rich>=10.11.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (13.7.0)
# Requirement already satisfied: semver in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (3.0.2)
# Requirement already satisfied: toml in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (0.10.2)
# Requirement already satisfied: typing-extensions>=3.10.0.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (4.8.0)
# Requirement already satisfied: tzlocal>=1.1 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (5.2)
# Requirement already satisfied: validators>=0.2 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (0.22.0)
# Requirement already satisfied: gitpython!=3.1.19 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (3.1.40)
# Requirement already satisfied: pydeck>=0.1.dev5 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (0.8.1b0)
# Requirement already satisfied: tornado>=6.0.3 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (6.3.3)
# Requirement already satisfied: watchdog in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from streamlit==1.20.0->-r ./requirements.txt (line 4)) (3.0.0)
# Collecting python-dotenv<0.20.0,>=0.19.1 (from streamlit-aggrid==0.2.3.post2->-r ./requirements.txt (line 6))
# Downloading python_dotenv-0.19.2-py2.py3-none-any.whl (17 kB)
# Collecting simplejson>=3.0 (from streamlit-aggrid==0.2.3.post2->-r ./requirements.txt (line 6))
# Downloading simplejson-3.19.2-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (3.1 kB)
# Collecting google-auth>=1.12.0 (from gspread==5.7.2->-r ./requirements.txt (line 7))
# Downloading google_auth-2.23.4-py2.py3-none-any.whl.metadata (4.7 kB)
# Collecting google-auth-oauthlib>=0.4.1 (from gspread==5.7.2->-r ./requirements.txt (line 7))
# Downloading google_auth_oauthlib-1.1.0-py2.py3-none-any.whl.metadata (2.7 kB)
# Collecting decorator (from gspread_pandas==3.2.2->-r ./requirements.txt (line 8))
# Downloading decorator-5.1.1-py3-none-any.whl (9.1 kB)
# Requirement already satisfied: pytz>=2020.1 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from pandas->-r ./requirements.txt (line 2)) (2023.3.post1)
# Collecting beautifulsoup4 (from google->-r ./requirements.txt (line 5))
# Downloading beautifulsoup4-4.12.2-py3-none-any.whl (142 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 143.0/143.0 kB 12.6 MB/s eta 0:00:00
# Requirement already satisfied: entrypoints in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (0.4)
# Requirement already satisfied: jinja2 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (3.1.2)
# Requirement already satisfied: jsonschema>=3.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (4.20.0)
# Requirement already satisfied: toolz in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (0.12.0)
# Requirement already satisfied: gitdb<5,>=4.0.1 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from gitpython!=3.1.19->streamlit==1.20.0->-r ./requirements.txt (line 4)) (4.0.11)
# Collecting pyasn1-modules>=0.2.1 (from google-auth>=1.12.0->gspread==5.7.2->-r ./requirements.txt (line 7))
# Downloading pyasn1_modules-0.3.0-py2.py3-none-any.whl (181 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 181.3/181.3 kB 17.8 MB/s eta 0:00:00
# Collecting rsa<5,>=3.1.4 (from google-auth>=1.12.0->gspread==5.7.2->-r ./requirements.txt (line 7))
# Downloading rsa-4.9-py3-none-any.whl (34 kB)
# Collecting requests-oauthlib>=0.7.0 (from google-auth-oauthlib>=0.4.1->gspread==5.7.2->-r ./requirements.txt (line 7))
# Downloading requests_oauthlib-1.3.1-py2.py3-none-any.whl (23 kB)
# Requirement already satisfied: zipp>=0.5 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from importlib-metadata>=1.4->streamlit==1.20.0->-r ./requirements.txt (line 4)) (3.17.0)
# Requirement already satisfied: six>=1.5 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from python-dateutil->streamlit==1.20.0->-r ./requirements.txt (line 4)) (1.16.0)
# Requirement already satisfied: charset-normalizer<4,>=2 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from requests>=2.4->streamlit==1.20.0->-r ./requirements.txt (line 4)) (3.3.2)
# Requirement already satisfied: idna<4,>=2.5 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from requests>=2.4->streamlit==1.20.0->-r ./requirements.txt (line 4)) (3.4)
# Requirement already satisfied: urllib3<3,>=1.21.1 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from requests>=2.4->streamlit==1.20.0->-r ./requirements.txt (line 4)) (2.1.0)
# Requirement already satisfied: certifi>=2017.4.17 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from requests>=2.4->streamlit==1.20.0->-r ./requirements.txt (line 4)) (2023.7.22)
# Requirement already satisfied: markdown-it-py>=2.2.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from rich>=10.11.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (3.0.0)
# Requirement already satisfied: pygments<3.0.0,>=2.13.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from rich>=10.11.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (2.16.1)
# Collecting soupsieve>1.2 (from beautifulsoup4->google->-r ./requirements.txt (line 5))
# Downloading soupsieve-2.5-py3-none-any.whl.metadata (4.7 kB)
# Requirement already satisfied: smmap<6,>=3.0.1 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from gitdb<5,>=4.0.1->gitpython!=3.1.19->streamlit==1.20.0->-r ./requirements.txt (line 4)) (5.0.1)
# Requirement already satisfied: MarkupSafe>=2.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from jinja2->altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (2.1.3)
# Requirement already satisfied: attrs>=22.2.0 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from jsonschema>=3.0->altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (23.1.0)
# Requirement already satisfied: jsonschema-specifications>=2023.03.6 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from jsonschema>=3.0->altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (2023.11.1)
# Requirement already satisfied: referencing>=0.28.4 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from jsonschema>=3.0->altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (0.31.0)
# Requirement already satisfied: rpds-py>=0.7.1 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from jsonschema>=3.0->altair<5,>=3.2.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (0.13.0)
# Requirement already satisfied: mdurl~=0.1 in /home/hammie/.virtualenvs/r-reticulate_brutus/lib/python3.9/site-packages (from markdown-it-py>=2.2.0->rich>=10.11.0->streamlit==1.20.0->-r ./requirements.txt (line 4)) (0.1.2)
# Collecting pyasn1<0.6.0,>=0.4.6 (from pyasn1-modules>=0.2.1->google-auth>=1.12.0->gspread==5.7.2->-r ./requirements.txt (line 7))
# Downloading pyasn1-0.5.0-py2.py3-none-any.whl (83 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 83.9/83.9 kB 14.0 MB/s eta 0:00:00
# Collecting oauthlib>=3.0.0 (from requests-oauthlib>=0.7.0->google-auth-oauthlib>=0.4.1->gspread==5.7.2->-r ./requirements.txt (line 7))
# Downloading oauthlib-3.2.2-py3-none-any.whl (151 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 151.7/151.7 kB 14.9 MB/s eta 0:00:00
# Downloading scipy-1.11.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (36.6 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 36.6/36.6 MB 19.6 MB/s eta 0:00:00
# Downloading google_auth-2.23.4-py2.py3-none-any.whl (183 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 183.3/183.3 kB 30.8 MB/s eta 0:00:00
# Downloading google_auth_oauthlib-1.1.0-py2.py3-none-any.whl (19 kB)
# Downloading simplejson-3.19.2-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl (137 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 137.4/137.4 kB 26.3 MB/s eta 0:00:00
# Downloading soupsieve-2.5-py3-none-any.whl (36 kB)
# Installing collected packages: soupsieve, simplejson, scipy, python-dotenv, pyasn1, oauthlib, decorator, rsa, requests-oauthlib, pyasn1-modules, beautifulsoup4, google-auth, google, google-auth-oauthlib, gspread, streamlit-aggrid, gspread_pandas
# Successfully installed beautifulsoup4-4.12.2 decorator-5.1.1 google-3.0.0 google-auth-2.23.4 google-auth-oauthlib-1.1.0 gspread-5.7.2 gspread_pandas-3.2.2 oauthlib-3.2.2 pyasn1-0.5.0 pyasn1-modules-0.3.0 python-dotenv-0.19.2 requests-oauthlib-1.3.1 rsa-4.9 scipy-1.11.3 simplejson-3.19.2 soupsieve-2.5 streamlit-aggrid-0.2.3.post2
# (r-reticulate_brutus) (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$
# ====


# As at 2023-11-20 18:38GMT (HD) try and implement "https://github.com/NIH-CARD/NDD_SMR/pull/2/commits/3886c119d1e7343ca6de04778dca6dbd17a24e75":
# ====
# > getwd()
# [1] "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR"
# > reticulate::virtualenv_install(envname = "r-reticulate_brutus_streamlitVunspecified", python_version = ">3.7", requirements = "./requirements.txt")   #"[~]Vunspecified" for 'version unspecified' -- HD as at 2023-11-20 18:44GMT; as implemented in: in "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR": "requirements.txt"; old version (i.e. as obtained through "$ git clone") retained as "requirements.txt.bak".
# Using Python: /home/hammie/.pyenv/versions/3.9.18/bin/python3.9
# Creating virtual environment 'r-reticulate_brutus_streamlitVunspecified' ... 
# + /home/hammie/.pyenv/versions/3.9.18/bin/python3.9 -m venv /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified
# Done!
#   Installing packages: pip, wheel, setuptools
# + /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/bin/python -m pip install --upgrade pip wheel setuptools
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/lib/python3.9/site-packages (23.0.1)
# Collecting pip
# Using cached pip-23.3.1-py3-none-any.whl (2.1 MB)
# Collecting wheel
# Using cached wheel-0.41.3-py3-none-any.whl (65 kB)
# Requirement already satisfied: setuptools in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/lib/python3.9/site-packages (58.1.0)
# Collecting setuptools
# Downloading setuptools-69.0.0-py3-none-any.whl (819 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 819.4/819.4 kB 2.3 MB/s eta 0:00:00
# Installing collected packages: wheel, setuptools, pip
# Attempting uninstall: setuptools
# Found existing installation: setuptools 58.1.0
# Uninstalling setuptools-58.1.0:
#   Successfully uninstalled setuptools-58.1.0
# Attempting uninstall: pip
# Found existing installation: pip 23.0.1
# Uninstalling pip-23.0.1:
#   Successfully uninstalled pip-23.0.1
# Successfully installed pip-23.3.1 setuptools-69.0.0 wheel-0.41.3
# Virtual environment 'r-reticulate_brutus_streamlitVunspecified' successfully created.
# Using virtual environment 'r-reticulate_brutus_streamlitVunspecified' ...
# + /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/bin/python -m pip install --upgrade --no-user -r ./requirements.txt
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/lib/python3.9/site-packages (from -r ./requirements.txt (line 1)) (23.3.1)
# Collecting pandas (from -r ./requirements.txt (line 2))
# Downloading pandas-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (18 kB)
# Collecting scipy (from -r ./requirements.txt (line 3))
# Downloading scipy-1.11.4-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (60 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 60.4/60.4 kB 2.0 MB/s eta 0:00:00
# Collecting streamlit (from -r ./requirements.txt (line 4))
# Downloading streamlit-1.28.2-py2.py3-none-any.whl.metadata (8.1 kB)
# Collecting google (from -r ./requirements.txt (line 5))
# Using cached google-3.0.0-py2.py3-none-any.whl (45 kB)
# Collecting streamlit-aggrid==0.2.3.post2 (from -r ./requirements.txt (line 6))
# Using cached streamlit_aggrid-0.2.3.post2-py3-none-any.whl (3.5 MB)
# Collecting gspread==5.7.2 (from -r ./requirements.txt (line 7))
# Using cached gspread-5.7.2-py3-none-any.whl (40 kB)
# Collecting gspread_pandas==3.2.2 (from -r ./requirements.txt (line 8))
# Using cached gspread_pandas-3.2.2-py2.py3-none-any.whl (26 kB)
# Collecting protobuf==3.20.3 (from -r ./requirements.txt (line 9))
# Using cached protobuf-3.20.3-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.whl (1.0 MB)
# Collecting python-dotenv<0.20.0,>=0.19.1 (from streamlit-aggrid==0.2.3.post2->-r ./requirements.txt (line 6))
# Using cached python_dotenv-0.19.2-py2.py3-none-any.whl (17 kB)
# Collecting simplejson>=3.0 (from streamlit-aggrid==0.2.3.post2->-r ./requirements.txt (line 6))
# Using cached simplejson-3.19.2-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (3.1 kB)
# Collecting google-auth>=1.12.0 (from gspread==5.7.2->-r ./requirements.txt (line 7))
# Using cached google_auth-2.23.4-py2.py3-none-any.whl.metadata (4.7 kB)
# Collecting google-auth-oauthlib>=0.4.1 (from gspread==5.7.2->-r ./requirements.txt (line 7))
# Using cached google_auth_oauthlib-1.1.0-py2.py3-none-any.whl.metadata (2.7 kB)
# Collecting decorator (from gspread_pandas==3.2.2->-r ./requirements.txt (line 8))
# Using cached decorator-5.1.1-py3-none-any.whl (9.1 kB)
# Collecting numpy<2,>=1.22.4 (from pandas->-r ./requirements.txt (line 2))
# Using cached numpy-1.26.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (61 kB)
# Collecting python-dateutil>=2.8.2 (from pandas->-r ./requirements.txt (line 2))
# Using cached python_dateutil-2.8.2-py2.py3-none-any.whl (247 kB)
# Collecting pytz>=2020.1 (from pandas->-r ./requirements.txt (line 2))
# Using cached pytz-2023.3.post1-py2.py3-none-any.whl.metadata (22 kB)
# Collecting tzdata>=2022.1 (from pandas->-r ./requirements.txt (line 2))
# Downloading tzdata-2023.3-py2.py3-none-any.whl (341 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 341.8/341.8 kB 2.3 MB/s eta 0:00:00
# Collecting altair<6,>=4.0 (from streamlit->-r ./requirements.txt (line 4))
# Downloading altair-5.1.2-py3-none-any.whl.metadata (8.6 kB)
# Collecting blinker<2,>=1.0.0 (from streamlit->-r ./requirements.txt (line 4))
# Using cached blinker-1.7.0-py3-none-any.whl.metadata (1.9 kB)
# Collecting cachetools<6,>=4.0 (from streamlit->-r ./requirements.txt (line 4))
# Using cached cachetools-5.3.2-py3-none-any.whl.metadata (5.2 kB)
# Collecting click<9,>=7.0 (from streamlit->-r ./requirements.txt (line 4))
# Using cached click-8.1.7-py3-none-any.whl.metadata (3.0 kB)
# Collecting importlib-metadata<7,>=1.4 (from streamlit->-r ./requirements.txt (line 4))
# Using cached importlib_metadata-6.8.0-py3-none-any.whl.metadata (5.1 kB)
# Collecting packaging<24,>=16.8 (from streamlit->-r ./requirements.txt (line 4))
# Using cached packaging-23.2-py3-none-any.whl.metadata (3.2 kB)
# Collecting pillow<11,>=7.1.0 (from streamlit->-r ./requirements.txt (line 4))
# Using cached Pillow-10.1.0-cp39-cp39-manylinux_2_28_x86_64.whl.metadata (9.5 kB)
# Collecting pyarrow>=6.0 (from streamlit->-r ./requirements.txt (line 4))
# Using cached pyarrow-14.0.1-cp39-cp39-manylinux_2_28_x86_64.whl.metadata (3.0 kB)
# Collecting requests<3,>=2.27 (from streamlit->-r ./requirements.txt (line 4))
# Using cached requests-2.31.0-py3-none-any.whl.metadata (4.6 kB)
# Collecting rich<14,>=10.14.0 (from streamlit->-r ./requirements.txt (line 4))
# Using cached rich-13.7.0-py3-none-any.whl.metadata (18 kB)
# Collecting tenacity<9,>=8.1.0 (from streamlit->-r ./requirements.txt (line 4))
# Downloading tenacity-8.2.3-py3-none-any.whl.metadata (1.0 kB)
# Collecting toml<2,>=0.10.1 (from streamlit->-r ./requirements.txt (line 4))
# Using cached toml-0.10.2-py2.py3-none-any.whl (16 kB)
# Collecting typing-extensions<5,>=4.3.0 (from streamlit->-r ./requirements.txt (line 4))
# Using cached typing_extensions-4.8.0-py3-none-any.whl.metadata (3.0 kB)
# Collecting tzlocal<6,>=1.1 (from streamlit->-r ./requirements.txt (line 4))
# Using cached tzlocal-5.2-py3-none-any.whl.metadata (7.8 kB)
# Collecting validators<1,>=0.2 (from streamlit->-r ./requirements.txt (line 4))
# Using cached validators-0.22.0-py3-none-any.whl.metadata (4.7 kB)
# Collecting gitpython!=3.1.19,<4,>=3.0.7 (from streamlit->-r ./requirements.txt (line 4))
# Using cached GitPython-3.1.40-py3-none-any.whl.metadata (12 kB)
# Collecting pydeck<1,>=0.8.0b4 (from streamlit->-r ./requirements.txt (line 4))
# Using cached pydeck-0.8.1b0-py2.py3-none-any.whl (4.8 MB)
# Collecting tornado<7,>=6.0.3 (from streamlit->-r ./requirements.txt (line 4))
# Using cached tornado-6.3.3-cp38-abi3-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (2.5 kB)
# Collecting watchdog>=2.1.5 (from streamlit->-r ./requirements.txt (line 4))
# Using cached watchdog-3.0.0-py3-none-manylinux2014_x86_64.whl (82 kB)
# Collecting beautifulsoup4 (from google->-r ./requirements.txt (line 5))
# Using cached beautifulsoup4-4.12.2-py3-none-any.whl (142 kB)
# Collecting jinja2 (from altair<6,>=4.0->streamlit->-r ./requirements.txt (line 4))
# Using cached Jinja2-3.1.2-py3-none-any.whl (133 kB)
# Collecting jsonschema>=3.0 (from altair<6,>=4.0->streamlit->-r ./requirements.txt (line 4))
# Using cached jsonschema-4.20.0-py3-none-any.whl.metadata (8.1 kB)
# Collecting toolz (from altair<6,>=4.0->streamlit->-r ./requirements.txt (line 4))
# Using cached toolz-0.12.0-py3-none-any.whl (55 kB)
# Collecting gitdb<5,>=4.0.1 (from gitpython!=3.1.19,<4,>=3.0.7->streamlit->-r ./requirements.txt (line 4))
# Using cached gitdb-4.0.11-py3-none-any.whl.metadata (1.2 kB)
# Collecting pyasn1-modules>=0.2.1 (from google-auth>=1.12.0->gspread==5.7.2->-r ./requirements.txt (line 7))
# Using cached pyasn1_modules-0.3.0-py2.py3-none-any.whl (181 kB)
# Collecting rsa<5,>=3.1.4 (from google-auth>=1.12.0->gspread==5.7.2->-r ./requirements.txt (line 7))
# Using cached rsa-4.9-py3-none-any.whl (34 kB)
# Collecting requests-oauthlib>=0.7.0 (from google-auth-oauthlib>=0.4.1->gspread==5.7.2->-r ./requirements.txt (line 7))
# Using cached requests_oauthlib-1.3.1-py2.py3-none-any.whl (23 kB)
# Collecting zipp>=0.5 (from importlib-metadata<7,>=1.4->streamlit->-r ./requirements.txt (line 4))
# Using cached zipp-3.17.0-py3-none-any.whl.metadata (3.7 kB)
# Collecting six>=1.5 (from python-dateutil>=2.8.2->pandas->-r ./requirements.txt (line 2))
# Using cached six-1.16.0-py2.py3-none-any.whl (11 kB)
# Collecting charset-normalizer<4,>=2 (from requests<3,>=2.27->streamlit->-r ./requirements.txt (line 4))
# Using cached charset_normalizer-3.3.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (33 kB)
# Collecting idna<4,>=2.5 (from requests<3,>=2.27->streamlit->-r ./requirements.txt (line 4))
# Using cached idna-3.4-py3-none-any.whl (61 kB)
# Collecting urllib3<3,>=1.21.1 (from requests<3,>=2.27->streamlit->-r ./requirements.txt (line 4))
# Using cached urllib3-2.1.0-py3-none-any.whl.metadata (6.4 kB)
# Collecting certifi>=2017.4.17 (from requests<3,>=2.27->streamlit->-r ./requirements.txt (line 4))
# Downloading certifi-2023.11.17-py3-none-any.whl.metadata (2.2 kB)
# Collecting markdown-it-py>=2.2.0 (from rich<14,>=10.14.0->streamlit->-r ./requirements.txt (line 4))
# Using cached markdown_it_py-3.0.0-py3-none-any.whl.metadata (6.9 kB)
# Collecting pygments<3.0.0,>=2.13.0 (from rich<14,>=10.14.0->streamlit->-r ./requirements.txt (line 4))
# Downloading pygments-2.17.1-py3-none-any.whl.metadata (2.6 kB)
# Collecting soupsieve>1.2 (from beautifulsoup4->google->-r ./requirements.txt (line 5))
# Using cached soupsieve-2.5-py3-none-any.whl.metadata (4.7 kB)
# Collecting smmap<6,>=3.0.1 (from gitdb<5,>=4.0.1->gitpython!=3.1.19,<4,>=3.0.7->streamlit->-r ./requirements.txt (line 4))
# Using cached smmap-5.0.1-py3-none-any.whl.metadata (4.3 kB)
# Collecting MarkupSafe>=2.0 (from jinja2->altair<6,>=4.0->streamlit->-r ./requirements.txt (line 4))
# Using cached MarkupSafe-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (3.0 kB)
# Collecting attrs>=22.2.0 (from jsonschema>=3.0->altair<6,>=4.0->streamlit->-r ./requirements.txt (line 4))
# Using cached attrs-23.1.0-py3-none-any.whl (61 kB)
# Collecting jsonschema-specifications>=2023.03.6 (from jsonschema>=3.0->altair<6,>=4.0->streamlit->-r ./requirements.txt (line 4))
# Using cached jsonschema_specifications-2023.11.1-py3-none-any.whl.metadata (2.8 kB)
# Collecting referencing>=0.28.4 (from jsonschema>=3.0->altair<6,>=4.0->streamlit->-r ./requirements.txt (line 4))
# Using cached referencing-0.31.0-py3-none-any.whl.metadata (2.6 kB)
# Collecting rpds-py>=0.7.1 (from jsonschema>=3.0->altair<6,>=4.0->streamlit->-r ./requirements.txt (line 4))
# Downloading rpds_py-0.13.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (3.7 kB)
# Collecting mdurl~=0.1 (from markdown-it-py>=2.2.0->rich<14,>=10.14.0->streamlit->-r ./requirements.txt (line 4))
# Using cached mdurl-0.1.2-py3-none-any.whl (10.0 kB)
# Collecting pyasn1<0.6.0,>=0.4.6 (from pyasn1-modules>=0.2.1->google-auth>=1.12.0->gspread==5.7.2->-r ./requirements.txt (line 7))
# Using cached pyasn1-0.5.0-py2.py3-none-any.whl (83 kB)
# Collecting oauthlib>=3.0.0 (from requests-oauthlib>=0.7.0->google-auth-oauthlib>=0.4.1->gspread==5.7.2->-r ./requirements.txt (line 7))
# Using cached oauthlib-3.2.2-py3-none-any.whl (151 kB)
# Downloading pandas-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (12.3 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 12.3/12.3 MB 1.9 MB/s eta 0:00:00
# Downloading scipy-1.11.4-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (36.6 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 36.6/36.6 MB 2.3 MB/s eta 0:00:00
# Downloading streamlit-1.28.2-py2.py3-none-any.whl (8.4 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 8.4/8.4 MB 2.6 MB/s eta 0:00:00
# Downloading altair-5.1.2-py3-none-any.whl (516 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 516.2/516.2 kB 2.2 MB/s eta 0:00:00
# Using cached blinker-1.7.0-py3-none-any.whl (13 kB)
# Using cached cachetools-5.3.2-py3-none-any.whl (9.3 kB)
# Using cached click-8.1.7-py3-none-any.whl (97 kB)
# Using cached GitPython-3.1.40-py3-none-any.whl (190 kB)
# Using cached google_auth-2.23.4-py2.py3-none-any.whl (183 kB)
# Using cached google_auth_oauthlib-1.1.0-py2.py3-none-any.whl (19 kB)
# Using cached importlib_metadata-6.8.0-py3-none-any.whl (22 kB)
# Using cached numpy-1.26.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (18.2 MB)
# Using cached packaging-23.2-py3-none-any.whl (53 kB)
# Using cached Pillow-10.1.0-cp39-cp39-manylinux_2_28_x86_64.whl (3.6 MB)
# Using cached pyarrow-14.0.1-cp39-cp39-manylinux_2_28_x86_64.whl (38.0 MB)
# Using cached pytz-2023.3.post1-py2.py3-none-any.whl (502 kB)
# Using cached requests-2.31.0-py3-none-any.whl (62 kB)
# Using cached rich-13.7.0-py3-none-any.whl (240 kB)
# Using cached simplejson-3.19.2-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl (137 kB)
# Downloading tenacity-8.2.3-py3-none-any.whl (24 kB)
# Using cached tornado-6.3.3-cp38-abi3-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl (427 kB)
# Using cached typing_extensions-4.8.0-py3-none-any.whl (31 kB)
# Using cached tzlocal-5.2-py3-none-any.whl (17 kB)
# Using cached validators-0.22.0-py3-none-any.whl (26 kB)
# Downloading certifi-2023.11.17-py3-none-any.whl (162 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 162.5/162.5 kB 1.9 MB/s eta 0:00:00
# Using cached charset_normalizer-3.3.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (142 kB)
# Using cached gitdb-4.0.11-py3-none-any.whl (62 kB)
# Using cached jsonschema-4.20.0-py3-none-any.whl (84 kB)
# Using cached markdown_it_py-3.0.0-py3-none-any.whl (87 kB)
# Downloading pygments-2.17.1-py3-none-any.whl (1.2 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.2/1.2 MB 2.3 MB/s eta 0:00:00
# Using cached soupsieve-2.5-py3-none-any.whl (36 kB)
# Using cached urllib3-2.1.0-py3-none-any.whl (104 kB)
# Using cached zipp-3.17.0-py3-none-any.whl (7.4 kB)
# Using cached jsonschema_specifications-2023.11.1-py3-none-any.whl (17 kB)
# Using cached MarkupSafe-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (25 kB)
# Using cached referencing-0.31.0-py3-none-any.whl (25 kB)
# Downloading rpds_py-0.13.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.2 MB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.2/1.2 MB 2.5 MB/s eta 0:00:00
# Using cached smmap-5.0.1-py3-none-any.whl (24 kB)
# Installing collected packages: pytz, zipp, watchdog, validators, urllib3, tzlocal, tzdata, typing-extensions, tornado, toolz, toml, tenacity, soupsieve, smmap, six, simplejson, rpds-py, python-dotenv, pygments, pyasn1, protobuf, pillow, packaging, oauthlib, numpy, mdurl, MarkupSafe, idna, decorator, click, charset-normalizer, certifi, cachetools, blinker, attrs, scipy, rsa, requests, referencing, python-dateutil, pyasn1-modules, pyarrow, markdown-it-py, jinja2, importlib-metadata, gitdb, beautifulsoup4, rich, requests-oauthlib, pydeck, pandas, jsonschema-specifications, google-auth, google, gitpython, jsonschema, google-auth-oauthlib, gspread, altair, streamlit, gspread_pandas, streamlit-aggrid
# Successfully installed MarkupSafe-2.1.3 altair-5.1.2 attrs-23.1.0 beautifulsoup4-4.12.2 blinker-1.7.0 cachetools-5.3.2 certifi-2023.11.17 charset-normalizer-3.3.2 click-8.1.7 decorator-5.1.1 gitdb-4.0.11 gitpython-3.1.40 google-3.0.0 google-auth-2.23.4 google-auth-oauthlib-1.1.0 gspread-5.7.2 gspread_pandas-3.2.2 idna-3.4 importlib-metadata-6.8.0 jinja2-3.1.2 jsonschema-4.20.0 jsonschema-specifications-2023.11.1 markdown-it-py-3.0.0 mdurl-0.1.2 numpy-1.26.2 oauthlib-3.2.2 packaging-23.2 pandas-2.1.3 pillow-10.1.0 protobuf-3.20.3 pyarrow-14.0.1 pyasn1-0.5.0 pyasn1-modules-0.3.0 pydeck-0.8.1b0 pygments-2.17.1 python-dateutil-2.8.2 python-dotenv-0.19.2 pytz-2023.3.post1 referencing-0.31.0 requests-2.31.0 requests-oauthlib-1.3.1 rich-13.7.0 rpds-py-0.13.1 rsa-4.9 scipy-1.11.4 simplejson-3.19.2 six-1.16.0 smmap-5.0.1 soupsieve-2.5 streamlit-1.28.2 streamlit-aggrid-0.2.3.post2 tenacity-8.2.3 toml-0.10.2 toolz-0.12.0 tornado-6.3.3 typing-extensions-4.8.0 tzdata-2023.3 tzlocal-5.2 urllib3-2.1.0 validators-0.22.0 watchdog-3.0.0 zipp-3.17.0
# >
# ====
# However, then, still, in RStudio Desktop Terminal as on Brutus:
# ====
# (r-reticulate_brutus) (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ deactivate
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ source /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/bin/activate
# (r-reticulate_brutus_streamlitVunspecified) (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ streamlit run ./Home.py 
# 
# You can now view your Streamlit app in your browser.
# 
# Local URL: http://localhost:8501
# Network URL: http://192.168.1.2:8501
# 
# 2023-11-20 18:06:51.308 Uncaught app exception
# Traceback (most recent call last):
#   File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/lib/python3.9/site-packages/streamlit/runtime/scriptrunner/script_runner.py", line 534, in _run_script
# exec(code, module.__dict__)
# File "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/pages/Analysis.py", line 125, in <module>
#   unique_dx = list(main_df['Disease'].unique())
# File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/lib/python3.9/site-packages/pandas/core/frame.py", line 3893, in __getitem__
# indexer = self.columns.get_loc(key)
# File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified/lib/python3.9/site-packages/pandas/core/indexes/range.py", line 418, in get_loc
# raise KeyError(key)
# KeyError: 'Disease'
# ====


# As at 2023-11-21 16:44GMT (HD), in RStudio Desktop Console as on Brutus:
# --
# Implement installation of gcsfs v 2023.9.2 as per "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7":
# ====
# > reticulate::virtualenv_install(envname = "r-reticulate_brutus_streamlitVunspecified_INCLgcsfs", python_version = ">3.7", requirements = "./requirements.txt")
# Using Python: /home/hammie/.pyenv/versions/3.9.18/bin/python3.9
# Creating virtual environment 'r-reticulate_brutus_streamlitVunspecified_INCLgcsfs' ... 
# + /home/hammie/.pyenv/versions/3.9.18/bin/python3.9 -m venv /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified_INCLgcsfs
# Done!
#   Installing packages: pip, wheel, setuptools
# + /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified_INCLgcsfs/bin/python -m pip install --upgrade pip wheel setuptools
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified_INCLgcsfs/lib/python3.9/site-packages (23.0.1)
# Collecting pip
# Using cached pip-23.3.1-py3-none-any.whl (2.1 MB)
# Collecting wheel
# Using cached wheel-0.41.3-py3-none-any.whl (65 kB)
# Requirement already satisfied: setuptools in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified_INCLgcsfs/lib/python3.9/site-packages (58.1.0)
# Collecting setuptools
# Downloading setuptools-69.0.1-py3-none-any.whl (819 kB)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 819.4/819.4 kB 892.5 kB/s eta 0:00:00
# Installing collected packages: wheel, setuptools, pip
# Attempting uninstall: setuptools
# Found existing installation: setuptools 58.1.0
# Uninstalling setuptools-58.1.0:
#   Successfully uninstalled setuptools-58.1.0
# Attempting uninstall: pip
# Found existing installation: pip 23.0.1
# Uninstalling pip-23.0.1:
#   Successfully uninstalled pip-23.0.1
# Successfully installed pip-23.3.1 setuptools-69.0.1 wheel-0.41.3
# Virtual environment 'r-reticulate_brutus_streamlitVunspecified_INCLgcsfs' successfully created.
# Using virtual environment 'r-reticulate_brutus_streamlitVunspecified_INCLgcsfs' ...
# + /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified_INCLgcsfs/bin/python -m pip install --upgrade --no-user -r ./requirements.txt
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspecified_INCLgcsfs/lib/python3.9/site-packages (from -r ./requirements.txt (line 1)) (23.3.1)
# Collecting pandas (from -r ./requirements.txt (line 2))
# Using cached pandas-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (18 kB)
# Collecting scipy (from -r ./requirements.txt (line 3))
# Using cached scipy-1.11.4-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (60 kB)
# Collecting streamlit (from -r ./requirements.txt (line 4))
# Using cached streamlit-1.28.2-py2.py3-none-any.whl.metadata (8.1 kB)
# Collecting google (from -r ./requirements.txt (line 5))
# Using cached google-3.0.0-py2.py3-none-any.whl (45 kB)
# Collecting streamlit-aggrid==0.2.3.post2 (from -r ./requirements.txt (line 6))
# Using cached streamlit_aggrid-0.2.3.post2-py3-none-any.whl (3.5 MB)
# Collecting gspread==5.7.2 (from -r ./requirements.txt (line 7))
# Using cached gspread-5.7.2-py3-none-any.whl (40 kB)
# Collecting gspread_pandas==3.2.2 (from -r ./requirements.txt (line 8))
# Using cached gspread_pandas-3.2.2-py2.py3-none-any.whl (26 kB)
# Collecting protobuf==3.20.3 (from -r ./requirements.txt (line 9))
# Using cached protobuf-3.20.3-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.whl (1.0 MB)
# Collecting gcsfs==2023.9.2 (from -r ./requirements.txt (line 10))
# Downloading gcsfs-2023.9.2-py2.py3-none-any.whl.metadata (1.6 kB)
# [... -- HD]
# Using cached referencing-0.31.0-py3-none-any.whl (25 kB)
# Using cached rpds_py-0.13.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.2 MB)
# Using cached smmap-5.0.1-py3-none-any.whl (24 kB)
# Installing collected packages: pytz, zipp, watchdog, validators, urllib3, tzlocal, tzdata, typing-extensions, tornado, toolz, toml, tenacity, soupsieve, smmap, six, simplejson, rpds-py, python-dotenv, pygments, pyasn1, protobuf, pillow, packaging, oauthlib, numpy, multidict, mdurl, MarkupSafe, idna, google-crc32c, fsspec, frozenlist, decorator, click, charset-normalizer, certifi, cachetools, blinker, attrs, async-timeout, yarl, scipy, rsa, requests, referencing, python-dateutil, pyasn1-modules, pyarrow, markdown-it-py, jinja2, importlib-metadata, googleapis-common-protos, google-resumable-media, gitdb, beautifulsoup4, aiosignal, rich, requests-oauthlib, pydeck, pandas, jsonschema-specifications, google-auth, google, gitpython, aiohttp, jsonschema, google-auth-oauthlib, google-api-core, gspread, google-cloud-core, altair, streamlit, gspread_pandas, google-cloud-storage, streamlit-aggrid, gcsfs
# Successfully installed MarkupSafe-2.1.3 aiohttp-3.9.0 aiosignal-1.3.1 altair-5.1.2 async-timeout-4.0.3 attrs-23.1.0 beautifulsoup4-4.12.2 blinker-1.7.0 cachetools-5.3.2 certifi-2023.11.17 charset-normalizer-3.3.2 click-8.1.7 decorator-5.1.1 frozenlist-1.4.0 fsspec-2023.9.2 gcsfs-2023.9.2 gitdb-4.0.11 gitpython-3.1.40 google-3.0.0 google-api-core-2.14.0 google-auth-2.23.4 google-auth-oauthlib-1.1.0 google-cloud-core-2.3.3 google-cloud-storage-2.13.0 google-crc32c-1.5.0 google-resumable-media-2.6.0 googleapis-common-protos-1.61.0 gspread-5.7.2 gspread_pandas-3.2.2 idna-3.4 importlib-metadata-6.8.0 jinja2-3.1.2 jsonschema-4.20.0 jsonschema-specifications-2023.11.1 markdown-it-py-3.0.0 mdurl-0.1.2 multidict-6.0.4 numpy-1.26.2 oauthlib-3.2.2 packaging-23.2 pandas-2.1.3 pillow-10.1.0 protobuf-3.20.3 pyarrow-14.0.1 pyasn1-0.5.1 pyasn1-modules-0.3.0 pydeck-0.8.1b0 pygments-2.17.1 python-dateutil-2.8.2 python-dotenv-0.19.2 pytz-2023.3.post1 referencing-0.31.0 requests-2.31.0 requests-oauthlib-1.3.1 rich-13.7.0 rpds-py-0.13.1 rsa-4.9 scipy-1.11.4 simplejson-3.19.2 six-1.16.0 smmap-5.0.1 soupsieve-2.5 streamlit-1.28.2 streamlit-aggrid-0.2.3.post2 tenacity-8.2.3 toml-0.10.2 toolz-0.12.0 tornado-6.3.3 typing-extensions-4.8.0 tzdata-2023.3 tzlocal-5.2 urllib3-2.1.0 validators-0.22.0 watchdog-3.0.0 yarl-1.9.3 zipp-3.17.0
# >
# ====


# As at 2023-11-21 17:00GMT (HD), in RStudio Desktop Console as on Brutus:
# --
# Implement installation of "st-files-connection" as per "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/249f9af76938f98046ae4b43ebf47655123fd491" -->:
# ====
# > reticulate::virtualenv_install(envname = "r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection", python_version = ">3.7", requirements = "./requirements.txt")
# Using Python: /home/hammie/.pyenv/versions/3.9.18/bin/python3.9
# Creating virtual environment 'r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection' ... 
# + /home/hammie/.pyenv/versions/3.9.18/bin/python3.9 -m venv /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection
# Done!
#   Installing packages: pip, wheel, setuptools
# + /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/bin/python -m pip install --upgrade pip wheel setuptools
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages (23.0.1)
# Collecting pip
# Using cached pip-23.3.1-py3-none-any.whl (2.1 MB)
# Collecting wheel
# Using cached wheel-0.41.3-py3-none-any.whl (65 kB)
# Requirement already satisfied: setuptools in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages (58.1.0)
# Collecting setuptools
# Using cached setuptools-69.0.1-py3-none-any.whl (819 kB)
# Installing collected packages: wheel, setuptools, pip
# Attempting uninstall: setuptools
# Found existing installation: setuptools 58.1.0
# Uninstalling setuptools-58.1.0:
#   Successfully uninstalled setuptools-58.1.0
# Attempting uninstall: pip
# Found existing installation: pip 23.0.1
# Uninstalling pip-23.0.1:
#   Successfully uninstalled pip-23.0.1
# Successfully installed pip-23.3.1 setuptools-69.0.1 wheel-0.41.3
# Virtual environment 'r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection' successfully created.
# Using virtual environment 'r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection' ...
# + /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/bin/python -m pip install --upgrade --no-user -r ./requirements.txt
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages (from -r ./requirements.txt (line 1)) (23.3.1)
# Collecting pandas (from -r ./requirements.txt (line 2))
# Using cached pandas-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (18 kB)
# Collecting scipy (from -r ./requirements.txt (line 3))
# Using cached scipy-1.11.4-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (60 kB)
# Collecting streamlit (from -r ./requirements.txt (line 4))
# Using cached streamlit-1.28.2-py2.py3-none-any.whl.metadata (8.1 kB)
# Collecting google (from -r ./requirements.txt (line 5))
# Using cached google-3.0.0-py2.py3-none-any.whl (45 kB)
# Collecting streamlit-aggrid==0.2.3.post2 (from -r ./requirements.txt (line 6))
# Using cached streamlit_aggrid-0.2.3.post2-py3-none-any.whl (3.5 MB)
# Collecting gspread==5.7.2 (from -r ./requirements.txt (line 7))
# Using cached gspread-5.7.2-py3-none-any.whl (40 kB)
# Collecting gspread_pandas==3.2.2 (from -r ./requirements.txt (line 8))
# Using cached gspread_pandas-3.2.2-py2.py3-none-any.whl (26 kB)
# Collecting protobuf==3.20.3 (from -r ./requirements.txt (line 9))
# Using cached protobuf-3.20.3-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.whl (1.0 MB)
# Collecting gcsfs==2023.9.2 (from -r ./requirements.txt (line 10))
# Using cached gcsfs-2023.9.2-py2.py3-none-any.whl.metadata (1.6 kB)
# Collecting st-files-connection (from -r ./requirements.txt (line 11))
# Downloading st_files_connection-0.1.0-py3-none-any.whl.metadata (5.5 kB)
# [... -- HD]
# Using cached referencing-0.31.0-py3-none-any.whl (25 kB)
# Using cached rpds_py-0.13.1-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.2 MB)
# Using cached smmap-5.0.1-py3-none-any.whl (24 kB)
# Installing collected packages: pytz, zipp, watchdog, validators, urllib3, tzlocal, tzdata, typing-extensions, tornado, toolz, toml, tenacity, soupsieve, smmap, six, simplejson, rpds-py, python-dotenv, pygments, pyasn1, protobuf, pillow, packaging, oauthlib, numpy, multidict, mdurl, MarkupSafe, idna, google-crc32c, fsspec, frozenlist, decorator, click, charset-normalizer, certifi, cachetools, blinker, attrs, async-timeout, yarl, scipy, rsa, requests, referencing, python-dateutil, pyasn1-modules, pyarrow, markdown-it-py, jinja2, importlib-metadata, googleapis-common-protos, google-resumable-media, gitdb, beautifulsoup4, aiosignal, rich, requests-oauthlib, pydeck, pandas, jsonschema-specifications, google-auth, google, gitpython, aiohttp, jsonschema, google-auth-oauthlib, google-api-core, gspread, google-cloud-core, altair, streamlit, gspread_pandas, google-cloud-storage, streamlit-aggrid, st-files-connection, gcsfs
# Successfully installed MarkupSafe-2.1.3 aiohttp-3.9.0 aiosignal-1.3.1 altair-5.1.2 async-timeout-4.0.3 attrs-23.1.0 beautifulsoup4-4.12.2 blinker-1.7.0 cachetools-5.3.2 certifi-2023.11.17 charset-normalizer-3.3.2 click-8.1.7 decorator-5.1.1 frozenlist-1.4.0 fsspec-2023.9.2 gcsfs-2023.9.2 gitdb-4.0.11 gitpython-3.1.40 google-3.0.0 google-api-core-2.14.0 google-auth-2.23.4 google-auth-oauthlib-1.1.0 google-cloud-core-2.3.3 google-cloud-storage-2.13.0 google-crc32c-1.5.0 google-resumable-media-2.6.0 googleapis-common-protos-1.61.0 gspread-5.7.2 gspread_pandas-3.2.2 idna-3.4 importlib-metadata-6.8.0 jinja2-3.1.2 jsonschema-4.20.0 jsonschema-specifications-2023.11.1 markdown-it-py-3.0.0 mdurl-0.1.2 multidict-6.0.4 numpy-1.26.2 oauthlib-3.2.2 packaging-23.2 pandas-2.1.3 pillow-10.1.0 protobuf-3.20.3 pyarrow-14.0.1 pyasn1-0.5.1 pyasn1-modules-0.3.0 pydeck-0.8.1b0 pygments-2.17.1 python-dateutil-2.8.2 python-dotenv-0.19.2 pytz-2023.3.post1 referencing-0.31.0 requests-2.31.0 requests-oauthlib-1.3.1 rich-13.7.0 rpds-py-0.13.1 rsa-4.9 scipy-1.11.4 simplejson-3.19.2 six-1.16.0 smmap-5.0.1 soupsieve-2.5 st-files-connection-0.1.0 streamlit-1.28.2 streamlit-aggrid-0.2.3.post2 tenacity-8.2.3 toml-0.10.2 toolz-0.12.0 tornado-6.3.3 typing-extensions-4.8.0 tzdata-2023.3 tzlocal-5.2 urllib3-2.1.0 validators-0.22.0 watchdog-3.0.0 yarl-1.9.3 zipp-3.17.0
# >
# ====


# 'However', as at 2023-11-21 17:14GMT (HD), in RStudio Desktop Terminal as on Brutus:
# ====
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ source /home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/bin/activate
# (r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection) (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ streamlit run ./Home.py 
# You can now view your Streamlit app in your browser.
# 
# Local URL: http://localhost:8501
# Network URL: http://192.168.1.2:8501
# 
# 2023-11-21 17:06:14.181 Please replace `st.experimental_connection` with `st.connection`.
# 
# `st.experimental_connection` will be removed after 2024-04-01.
# _request non-retriable exception: Anonymous caller does not have storage.objects.get access to the Google Cloud Storage object. Permission 'storage.objects.get' denied on resource (or it may not exist)., 401
# Traceback (most recent call last):
#   File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/gcsfs/retry.py", line 122, in retry_request
# return await func(*args, **kwargs)
# File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/gcsfs/core.py", line 430, in _request
# validate_response(status, contents, path, args)
# File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/gcsfs/retry.py", line 109, in validate_response
# raise HttpError(error)
# gcsfs.retry.HttpError: Anonymous caller does not have storage.objects.get access to the Google Cloud Storage object. Permission 'storage.objects.get' denied on resource (or it may not exist)., 401
# 2023-11-21 17:06:14.591 Uncaught app exception
# Traceback (most recent call last):
#   File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/storage/in_memory_cache_storage_wrapper.py", line 87, in get
# entry_bytes = self._read_from_mem_cache(key)
# File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/storage/in_memory_cache_storage_wrapper.py", line 137, in _read_from_mem_cache
# raise CacheStorageKeyNotFoundError("Key not found in mem cache")
# streamlit.runtime.caching.storage.cache_storage_protocol.CacheStorageKeyNotFoundError: Key not found in mem cache
# 
# During handling of the above exception, another exception occurred:
#   
#   Traceback (most recent call last):
#   File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/cache_data_api.py", line 634, in read_result
# pickled_entry = self.storage.get(key)
# File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/storage/in_memory_cache_storage_wrapper.py", line 89, in get
# entry_bytes = self._persist_storage.get(key)
# File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/storage/local_disk_cache_storage.py", line 155, in get
# raise CacheStorageKeyNotFoundError(
#   streamlit.runtime.caching.storage.cache_storage_protocol.CacheStorageKeyNotFoundError: Local disk cache storage is disabled (persist=None)
#   
#   The above exception was the direct cause of the following exception:
#     
#     Traceback (most recent call last):
#     File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/cache_utils.py", line 264, in _get_or_create_cached_value
#   cached_result = cache.read_result(value_key)
#   File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/cache_data_api.py", line 636, in read_result
#   raise CacheKeyNotFoundError(str(e)) from e
#   streamlit.runtime.caching.cache_errors.CacheKeyNotFoundError: Local disk cache storage is disabled (persist=None)
#   
#   During handling of the above exception, another exception occurred:
#     
#     Traceback (most recent call last):
#     File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/storage/in_memory_cache_storage_wrapper.py", line 87, in get
#   entry_bytes = self._read_from_mem_cache(key)
#   File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/storage/in_memory_cache_storage_wrapper.py", line 137, in _read_from_mem_cache
#   raise CacheStorageKeyNotFoundError("Key not found in mem cache")
#   streamlit.runtime.caching.storage.cache_storage_protocol.CacheStorageKeyNotFoundError: Key not found in mem cache
#   
#   During handling of the above exception, another exception occurred:
#     
#     Traceback (most recent call last):
#     File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/cache_data_api.py", line 634, in read_result
#   pickled_entry = self.storage.get(key)
#   File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/storage/in_memory_cache_storage_wrapper.py", line 89, in get
#   entry_bytes = self._persist_storage.get(key)
#   File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/storage/local_disk_cache_storage.py", line 155, in get
#   raise CacheStorageKeyNotFoundError(
#     streamlit.runtime.caching.storage.cache_storage_protocol.CacheStorageKeyNotFoundError: Local disk cache storage is disabled (persist=None)
#     
#     The above exception was the direct cause of the following exception:
#       
#       Traceback (most recent call last):
#       File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/cache_utils.py", line 312, in _handle_cache_miss
#     cached_result = cache.read_result(value_key)
#     File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/caching/cache_data_api.py", line 636, in read_result
#     raise CacheKeyNotFoundError(str(e)) from e
#     streamlit.runtime.caching.cache_errors.CacheKeyNotFoundError: Local disk cache storage is disabled (persist=None)
#     
#     During handling of the above exception, another exception occurred:
#       
#       Traceback (most recent call last):
#       File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/streamlit/runtime/scriptrunner/script_runner.py", line 534, in _run_script
#     exec(code, module.__dict__)
#     File "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/Home.py", line 117, in <module>
#       main_df = create_main()
#     File "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/Home.py", line 76, in create_main
#     df = conn.read("omicsynth/NDD_SMR_genes_all.parquet", input_format="parquet")
#     [... -- HD]
#     File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/gcsfs/retry.py", line 122, in retry_request
#     return await func(*args, **kwargs)
#     File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/gcsfs/core.py", line 430, in _request
#     validate_response(status, contents, path, args)
#     File "/home/hammie/.virtualenvs/r-reticulate_brutus_streamlitVunspcfd_INCLgcsfs_st-files-connection/lib/python3.9/site-packages/gcsfs/retry.py", line 109, in validate_response
#     raise HttpError(error)
#     gcsfs.retry.HttpError: Anonymous caller does not have storage.objects.get access to the Google Cloud Storage object. Permission 'storage.objects.get' denied on resource (or it may not exist)., 401
# ====



# END OF FILE.
