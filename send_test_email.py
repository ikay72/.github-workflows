import smtplib
from email.mime.text import MIMEText

smtp_server = 'mtn-co-rw.mail.protection.outlook.com'
smtp_port = 25  # or 465 for SSL/TLS
username = 'CustomerFeedback.Rw@mtn.com'
password = 'vK/23lkz&3m)7}3'

sender_email = 'CustomerFeedback.Rw@mtn.com'
receiver_email = 'ikay.chigozie@tretennetworks.com'
subject = 'SMTP Test Email'
body = 'This is a test email sent from a Python script.'

message = MIMEText(body)
message['Subject'] = subject
message['From'] = sender_email
message['To'] = receiver_email

try:
    with smtplib.SMTP(smtp_server, smtp_port) as server:
        print("Connecting to SMTP server...")
        server.ehlo()
        server.starttls()  # Secure the connection
        server.ehlo()
        server.login(username, password)
        server.sendmail(sender_email, receiver_email, message.as_string())
        print('Email sent successfully!')
except Exception as e:
    print(f"Error sending email: {e}")













