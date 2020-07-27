from PIL import Image
import pytesseract
  
img = Image.open(r'114.jpg')
text = pytesseract.image_to_string(img, lang='eng+chi_tra')
print(text)



# 英文'eng'、簡體中文'chi_sim'、繁體中文'chi_tra'
