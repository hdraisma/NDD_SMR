 # Install missing Python modules for use with Jupyter Notebook
 # "NDD_SMR/scripts/SMR_v8.ipynb" on Brutus as at 2023-11-22 12:30GMT (HD).
 # 
 # 
 # Based on "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/Scriptum.R" lines 1271--1274 and 702 as at 2023-11-22 14:40GMT (HD):
 # 
/home/hammie/.pyenv/versions/3.9.18/bin/python3.9 -m venv /home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb   #"[~/]Scriptum.R" line 1271

/home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb/bin/python -m pip install --upgrade pip wheel setuptools   #"[~/]Scriptum.R" line 1274

/home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb/bin/python -m pip install --upgrade --no-user 'pandas'   #"[~/]Scriptum.R" line 702
# --> As at 2023-11-22 14:54GMT (HD), on Brutus indeed:
# ====
# (base) hammie@hammie-Default-string:/$ /home/hammie/.pyenv/versions/3.9.18/bin/python3.9 -m venv /home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb
# (base) hammie@hammie-Default-string:/$ /home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb/bin/python -m pip install --upgrade pip wheel setuptools
# Requirement already satisfied: pip in /home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb/lib/python3.9/site-packages (23.0.1)
# Collecting pip
#   Using cached pip-23.3.1-py3-none-any.whl (2.1 MB)
# Collecting wheel
#   Using cached wheel-0.41.3-py3-none-any.whl (65 kB)
# Requirement already satisfied: setuptools in /home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb/lib/python3.9/site-packages (58.1.0)
# Collecting setuptools
#   Downloading setuptools-69.0.2-py3-none-any.whl (819 kB)
#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 819.5/819.5 kB 1.5 MB/s eta 0:00:00
# Installing collected packages: wheel, setuptools, pip
#   Attempting uninstall: setuptools
#     Found existing installation: setuptools 58.1.0
#     Uninstalling setuptools-58.1.0:
#       Successfully uninstalled setuptools-58.1.0
#   Attempting uninstall: pip
#     Found existing installation: pip 23.0.1
#     Uninstalling pip-23.0.1:
#       Successfully uninstalled pip-23.0.1
# Successfully installed pip-23.3.1 setuptools-69.0.2 wheel-0.41.3
# (base) hammie@hammie-Default-string:/$ /home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb/bin/python -m pip install --upgrade --no-user 'pandas'
# Collecting pandas
#   Using cached pandas-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (18 kB)
# Collecting numpy<2,>=1.22.4 (from pandas)
#   Using cached numpy-1.26.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (61 kB)
# Collecting python-dateutil>=2.8.2 (from pandas)
#   Using cached python_dateutil-2.8.2-py2.py3-none-any.whl (247 kB)
# Collecting pytz>=2020.1 (from pandas)
#   Using cached pytz-2023.3.post1-py2.py3-none-any.whl.metadata (22 kB)
# Collecting tzdata>=2022.1 (from pandas)
#   Using cached tzdata-2023.3-py2.py3-none-any.whl (341 kB)
# Collecting six>=1.5 (from python-dateutil>=2.8.2->pandas)
#   Using cached six-1.16.0-py2.py3-none-any.whl (11 kB)
# Using cached pandas-2.1.3-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (12.3 MB)
# Using cached numpy-1.26.2-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (18.2 MB)
# Using cached pytz-2023.3.post1-py2.py3-none-any.whl (502 kB)
# Installing collected packages: pytz, tzdata, six, numpy, python-dateutil, pandas
# Successfully installed numpy-1.26.2 pandas-2.1.3 python-dateutil-2.8.2 pytz-2023.3.post1 six-1.16.0 tzdata-2023.3
# (base) hammie@hammie-Default-string:/$
# ====
# Then:
# ====
# (base) hammie@hammie-Default-string:~$ jupyter
# usage: jupyter [-h] [--version] [--config-dir] [--data-dir] [--runtime-dir] [--paths] [--json]
#                [--debug]
#                [subcommand]
# 
# Jupyter: Interactive Computing
# 
# positional arguments:
#   subcommand     the subcommand to launch
# 
# optional arguments:
#   -h, --help     show this help message and exit
#   --version      show the versions of core jupyter packages and exit
#   --config-dir   show Jupyter config dir
#   --data-dir     show Jupyter data dir
#   --runtime-dir  show Jupyter runtime dir
#   --paths        show all Jupyter paths. Add --json for machine-readable format.
#   --json         output paths as machine-readable json
#   --debug        output debug information about paths
# 
# Available subcommands: bundlerextension console dejavu execute kernel kernelspec lab labextension
# labhub migrate nbclassic nbconvert nbextension notebook qtconsole run server serverextension
# troubleshoot trust
# 
# Please specify a subcommand or one of the optional arguments.
# [Note: "notebook" is a "subcommand" (indeed) -- HD]
# (base) hammie@hammie-Default-string:~$ pwd
# /home/hammie
# (base) hammie@hammie-Default-string:~$ cd "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR"   #Cd in principle also have gone for "[~/]scripts" directly as well -- HD
# (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ source /home/hammie/.virtualenvs/jupyternotebook_brutus__SMR_v8_ipynb/bin/activate
# (jupyternotebook_brutus__SMR_v8_ipynb) (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ jupyter   #Show that we have Jupyter have available already within this virtualenv -- HD as at 2023-11-22 15:14GMT (HD).
# usage: jupyter [-h] [--version] [--config-dir] [--data-dir] [--runtime-dir] [--paths] [--json]
#                [--debug]
#                [subcommand]
# 
# Jupyter: Interactive Computing
# 
# positional arguments:
#   subcommand     the subcommand to launch
# 
# optional arguments:
#   -h, --help     show this help message and exit
#   --version      show the versions of core jupyter packages and exit
#   --config-dir   show Jupyter config dir
#   --data-dir     show Jupyter data dir
#   --runtime-dir  show Jupyter runtime dir
#   --paths        show all Jupyter paths. Add --json for machine-readable format.
#   --json         output paths as machine-readable json
#   --debug        output debug information about paths
# 
# Available subcommands: bundlerextension console dejavu execute kernel kernelspec lab labextension
# labhub migrate nbclassic nbconvert nbextension notebook qtconsole run server serverextension
# troubleshoot trust
# 
# Please specify a subcommand or one of the optional arguments.
# (jupyternotebook_brutus__SMR_v8_ipynb) (base) hammie@hammie-Default-string:/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR$ jupyter notebook ./scripts/SMR_v8.ipynb 
# [W 2023-11-22 15:07:50.153 LabApp] 'file_to_run' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
# [W 2023-11-22 15:07:50.153 LabApp] 'file_to_run' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
# [I 2023-11-22 15:07:50.157 LabApp] JupyterLab extension loaded from /home/hammie/anaconda3/lib/python3.9/site-packages/jupyterlab
# [I 2023-11-22 15:07:50.157 LabApp] JupyterLab application directory is /home/hammie/anaconda3/share/jupyter/lab
# [I 15:07:50.160 NotebookApp] Serving notebooks from local directory: /media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/scripts
# [I 15:07:50.160 NotebookApp] Jupyter Notebook 6.4.8 is running at:
# [I 15:07:50.160 NotebookApp] http://localhost:8888/?token=47dd3082b5d6096bb0ca16bad8eecd1b485fa663e19999c4
# [I 15:07:50.160 NotebookApp]  or http://127.0.0.1:8888/?token=47dd3082b5d6096bb0ca16bad8eecd1b485fa663e19999c4
# [I 15:07:50.160 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
# [C 15:07:50.206 NotebookApp] 
#     
#     To access the notebook, open this file in a browser:
#         file:///home/hammie/.local/share/jupyter/runtime/nbserver-109577-open.html
#     Or copy and paste one of these URLs:
#         http://localhost:8888/?token=47dd3082b5d6096bb0ca16bad8eecd1b485fa663e19999c4
#      or http://127.0.0.1:8888/?token=47dd3082b5d6096bb0ca16bad8eecd1b485fa663e19999c4
# [I 15:08:26.965 NotebookApp] Kernel started: 57676dce-46b6-4d9f-b8c2-ab80394f21d4, name: python3
# ====
 

 # END OF FILE.
