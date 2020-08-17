import gspread
from oauth2client.service_account import ServiceAccountCredentials as SAC


GDriveJSON = 'PythonUpload.json'
GSpreadSheet = 'UploadByPython'

try:
    scope = ['https://spreadsheets.google.com/feeds', 'https://www.googleapis.com/auth/drive']
    key = SAC.from_json_keyfile_name(GDriveJSON, scope)
    gc = gspread.authorize(key)
    worksheet = gc.open(GSpreadSheet).sheet1
except:
    print(ex)
    sys.exit(1)
