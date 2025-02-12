# Streamlit Home


# Module load in
# 
# 
import streamlit as st
import pandas as pd
import gspread 
from gspread_pandas import Spread, Client
# 
# from google.oauth2.service_account import Credentials   #<-- Commented this line as at 2023-11-07 17:22GMT (HD); also, this line apparently equal to that as in "https://discuss.streamlit.io/t/solved-issue-of-pulling-private-google-sheet-into-a-streamlit-app-using-gspread-instead-of-gsheetsdb/39056".
# 
from PIL import Image
from st_files_connection import FilesConnection   # REF "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7" line 10 as at 2023-11-21 15:49GMT (HD).


if 'client_auth' not in st.session_state: # create session state variable for client auth 
        st.session_state['client_auth'] = None
        # 
        # 
# Load in main df and keep in cache to mitigate reloading on every page
# 
if 'main_data' not in st.session_state: # create session state
        st.session_state['main_data'] = pd.DataFrame()


### START Code commented as at 2023-11-07 17:36GMT (HD) and/as it is equal [or,
### following "@st.cache_data(", almost equal -- or a direct consequence thereof] to that as on
### "https://discuss.streamlit.io/t/solved-issue-of-pulling-private-google-sheet-into-a-streamlit-app-using-gspread-instead-of-gsheetsdb/39056"
### and hence apparently for the purpose of "pull[ing] data from a private
### google worksheet [] into a streamlit app".
# 
### Also, START Code uncommented as at 2023-11-22 10:18GMT (HD), as this code is
### still present i.e. not deleted or commented-out in
### "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7"
### "Home.py" lines 19--36. ~<-- recommented this code as at 2023-11-22 10:33GMT (HD)
# 
# 
# scopes = ["https://www.googleapis.com/auth/spreadsheets",]
# 
# skey = st.secrets["gcp_service_account"]   #<-- However as at 2023-11-22 10:25GMT (HD) this leads to the following error message to be displayed in "http://localhost:8501/":
#   # ====
#   # No secrets files found. Valid paths for a secrets.toml file are: /home/hammie/.streamlit/secrets.toml, /media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/.streamlit/secrets.toml
#   # --
#   # FileNotFoundError: No secrets files found. Valid paths for a secrets.toml file are: /home/hammie/.streamlit/secrets.toml, /media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/.streamlit/secrets.toml
#   # 
#   # Traceback:
#   # --
#   # [... -- HD]
#   # File "/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/Home.py", line 42, in <module>
#   #     skey = st.secrets["gcp_service_account"]
#   # [... -- HD]  
#   # --
#   # ====
# credentials = Credentials.from_service_account_info(
#     skey,
#     scopes=scopes,
# )
# client = gspread.authorize(credentials)
# 
# 
# # Add auth keys to session state
# 
# st.session_state['client_auth'] = client   #I.e. commented as 'direct consequence of code equal to that as in mentioned "discuss.streamlit.io" post' -- HD as at 2023-11-07 17:59GMT.
# 
# 
# @st.cache_data(show_spinner = False)
# 
# def load_data(url, sheet_name="Sheet"):
#     sh = client.open_by_url(url)
#     df = pd.DataFrame(sh.worksheet(sheet_name).get_all_records())
#     return df
# 
# 
### END Code uncommented as at 2023-11-22 10:18GMT (HD), and recommented as at 2023-11-22 10:33GMT (HD).
# 
### START Code uncommented as at 2023-11-21 15:54GMT (HD).
# 
# 
# 
# # Load in unfiltered associations   #<-- Commented this create_main() function
# # definition below (HD as at 2023-11-07 18:01GMT) as direct consequence of code
# # equal to that as in mentioned "discuss.streamlit.io" post.
# # 
# @st.cache_data(show_spinner = False)   #<-- This line copy--pasted from "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7" line 39 as at 2023-11-22 10:06GMT (HD).
# def create_main():
#   # df = load_data(st.secrets['simple_sig'])   #<-- Commented this line as at 2023-11-21 16:00GMT (HD), as per "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7".
#   
#   ### START Code copy--pasted from lines 41--54 of "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7" as at 2023-11-21 16:11GMT (HD).
#   # 
#   # 
#   # establish connection
#   conn = st.experimental_connection('gcs', type=FilesConnection)
#   
#   # read in file
#   df = conn.read("omicsynth/NDD_SMR_genes_all.parquet", input_format="parquet")
#   
#   
#   return df
# @st.cache_data(show_spinner = False)
# def create_mainsig():
#   # establish connection
#   conn = st.experimental_connection('gcs', type=FilesConnection)
# 
#   df = conn.read("omicsynth/NDD_sig_allcol.csv", input_format="csv")
#   # 
#   # 
#   ### END Code copy--pasted from lines 41--54 of "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7" as at 2023-11-21 16:11GMT (HD)
#   
#   return df
# 
# 
# 
### END Code uncommented as at 2023-11-21 15:54GMT (HD).
# 
# 
### END Code commented as at 2023-11-07 17:36GMT (HD).
  

# Welcome message
# 
st.title("OmicSynth Functional NDD Gene Browser")
st.markdown("""Welcome to OmicSynth's Neurodegenerative Disorders functional analysis browser!
            This application allows you to browse SMR data from our manuscript and conduct customized analysis. 
            Please report any issues, provide feedback, or ask general questions to chelsea.alvarado@nih.gov / HD""" )


### START Code commented as at 2023-11-07 18:27GMT (HD) and/as it is a direct
### consequence of that as on
### "https://discuss.streamlit.io/t/solved-issue-of-pulling-private-google-sheet-into-a-streamlit-app-using-gspread-instead-of-gsheetsdb/39056"
### i.e. the create_main() function definition, and hence apparently for the
### purpose of "pull[ing] data from a private google worksheet [] into a
### streamlit app"., and uncommented again as at 2023-11-21 16:17GMT (HD) as it might become functional in our case of deployment on the Brutus / SHC Workbench Connect again due to "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7".
# 
# 
# with st.spinner('Loading in data ... only happens once :)'):
#   main_df = create_main()
#   mainsig_df = create_mainsig()   #<-- This line copy--pasted from "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7" line 67 as at 2023-11-21 16:21GMT (HD).
#   st.session_state['main_data'] = main_df
#   st.session_state['mainsig_data'] = mainsig_df   #<-- This line copy--pasted from "https://github.com/NIH-CARD/NDD_SMR/pull/1/commits/1b11103888403c3932329d3564347422a74e30c7" line 69 as at 2023-11-21 16:22GMT (HD).
#   st.success('Done!')
# 
# 
### END Code commented as at 2023-11-07 18:27GMT (HD)., and uncommented again as at 2023-11-21 16:17GMT (HD).


### START Code commented as at 2023-11-07 18:35GMT (HD).
# 
# 
# # Add CARD logo
# # 
# card_img = Image.open('img/CARD-logo-white-print.png')   #As at 2023-11-07 18:33GMT (HD) causes error:
#   # --
#   2023-11-07 18:29:43.880 Uncaught app exception
# Traceback (most recent call last):
#   File "/home/hermanus.draisma/.virtualenvs/r-reticulate/lib64/python3.6/site-packages/streamlit/scriptrunner/script_runner.py", line 554, in _run_script
#     exec(code, module.__dict__)
#   File "/home/hermanus.draisma/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/Home.py", line 94, in <module>
#     card_img = Image.open('img/CARD-logo-white-print.png')
#   File "/home/hermanus.draisma/.virtualenvs/r-reticulate/lib64/python3.6/site-packages/PIL/Image.py", line 2975, in open
#     fp = builtins.open(filename, "rb")
# FileNotFoundError: [Errno 2] No such file or directory: 'img/CARD-logo-white-print.png'
#   # --
#   # ... but I don't deem this to be important ==> commented out this code 'block'
#   # 
# dti_img = Image.open('img/dti_img.jpeg')
# 
# 
# 
# card_img = Image.open('/home/hermanus.draisma/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/img/CARD-logo-white-print.png')   #<-- This line 'new' code as at 2023-11-08 14:42GMT (HD). Commented this line as at 2023-11-17 18:26GMT (HD); this line would be for use on RStudio Workbench.
# 
card_img = Image.open('/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/img/CARD-logo-white-print.png')   #<-- This line 'new' code as at 2023-11-17 18:26GMT (HD); this line would be for use in RStudio Desktop as on Brutus.
# 
# 
# dti_img = Image.open('/home/hermanus.draisma/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/img/dti_img.jpeg')   #<-- This line 'new' code as at 2023-11-08 14:46GMT (HD). Commented this line as at 2023-11-17 18:29GMT (HD); this line would be for use on RStudio Workbench.
# 
dti_img = Image.open('/media/hammie/My Passport/SOFTWARE/omicsynthcustomanalysis/NDD_SMR/img/dti_img.jpeg')   #<-- This line 'new' code as at 2023-11-17 18:30GMT (HD); this line would be for use in RStudio Desktop as on Brutus.
# 
# 
# 
st.sidebar.image(card_img)   #<-- Uncommented this line as at 2023-11-08 14:43GMT (HD).
# 
st.sidebar.image(dti_img)   #<-- Uncommented this line as at 2023-11-08 14:46GMT (HD).
# 
# 
### END Code commented as at 2023-11-07 18:35GMT (HD).


# END OF FILE.
