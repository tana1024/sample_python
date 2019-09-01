import smtplib
from email.mime.text import MIMEText

def smtplib_sample():
    # MIMEの作成
    subject = "テストメール"
    message = "テストメールです"
    msg = MIMEText(message, "html")
    msg["Subject"] = subject
    msg["To"] = 'tana2dev1@gmail.com'
    msg["From"] = 'tana2dev3@gmail.com'

    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login('tana2dev3@gmail.com', 'heroku2!git')
    server.send_message(msg)
    server.quit()

if __name__ == '__main__':
    smtplib_sample()