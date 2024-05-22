import requests

# Kannel configuration
kannel_host = 'kannel-mtnrwanda.default.svc.cluster.local'  # or the appropriate IP if not running locally
sendsms_port = '80'
username = 'g5385hhk'
password = 'a47hhk56'  # Replace with the actual password

# SMS details
sms_text = 'Hello, this is a test message!'
recipient = '+14036304951'
sender = '100'  # Replace with your actual sender number

# Construct the URL for Kannel's sendsms HTTP interface
send_sms_url = 'http://kannel-mtnrwanda.default.svc.cluster.local:80/cgi-bin/sendsms'


# Parameters should be strings, so username and password values should be enclosed in quotes
# The 'from' parameter should be a string as well
params = {
    'username': 'SMPP984',          # Enclosed in quotes
    'password': 'God#20Pa',         # Enclosed in quotes
    'to': recipient,                # Already enclosed in quotes
    'from': sender,                 # sender is a string, no need to change
    'text': sms_text,               # Already enclosed in quotes
}

# The extra closing brace on line 24 has been removed

# Make the HTTP request to Kannel
response = requests.get(send_sms_url, params=params)

# Check the response
if response.status_code == 202:
    print('SMS sent successfully!')
else:
    print(f'Failed to send SMS: {response.text}')
