import smtplib

smtp=smtplib.SMTP('smtp.gmail.com', 587)
smtp.ehlo()
smtp.starttls()
smtp.login('email_account','password')
from_addr='email_account'
to_addr="email_account"
msg="Subject:Gmail sent by Python scripts\nHello World!"
status=smtp.sendmail(from_addr, to_addr, msg)#加密文件，避免私密信息被截取
if status=={}:
    print("郵件傳送成功!")
else:
    print("郵件傳送失敗!")
smtp.quit()


