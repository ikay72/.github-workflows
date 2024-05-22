# secrets_agent.py
import os
import requests
import logging

logging.basicConfig(level=logging.INFO)

api_url = os.getenv("BEYONDTRUST_API_URL")
client_id = os.getenv("CLIENT_ID")
client_secret = os.getenv("CLIENT_SECRET")
secret_id = os.getenv("SECRET_ID")

try:
    auth_response = requests.post(
        f"{api_url}/oauth2/token",
        data={"grant_type": "client_credentials"},
        auth=(client_id, client_secret),
        verify=True
    )
    auth_response.raise_for_status()
    access_token = auth_response.json()["access_token"]

    headers = {"Authorization": f"Bearer {access_token}"}
    secret_response = requests.get(
        f"{api_url}/secrets/{secret_id}",
        headers=headers,
        verify=True
    )
    secret_response.raise_for_status()
    secret_data = secret_response.json()

    logging.info("Secret retrieved successfully")

    # Write the secret data to a file
    with open("/usr/src/app/secrets_files/secret.txt", "w") as f:
        f.write(secret_data)

except Exception as e:
    logging.error(f"Error retrieving secret: {e}")
    raise

