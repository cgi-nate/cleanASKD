from openai import AzureOpenAI
from dotenv import load_dotenv
import os

load_dotenv()

azure_endpoint = os.getenv("AZURE_OPENAI_ENDPOINT")
api_key = os.getenv("OPENAI_API_KEY")
azure_api_version = os.getenv("AZURE_OPENAI_VERSION")
deployment_name = os.getenv("AZURE_OPENAI_DEPLOYMENT")
model_name = os.getenv("AZURE_OPENAI_MODEL_NAME")


# config OpenAI for Azure
client = AzureOpenAI(
api_key=api_key,
azure_endpoint=azure_endpoint,
api_version=azure_api_version,
# api_type="azure"
)

deployment_name = deployment_name

print("**********Sending a test completion job*********")
print(f"&&&&&&&&&&&&&  API Key: {api_key}")
print(f"555555555555555 Endpoint: {azure_endpoint}")

messages=[
    {"role": "system", "content": "You are a helpful assistant."},
    {"role": "user", "content": "Piing!"}
          ]
response = client.chat.completions.create(model=deployment_name, messages=messages, max_tokens=10)
print(response)