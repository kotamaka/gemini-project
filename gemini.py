import google.generativeai as genai
from secret import GOOGLE_API_KEY

def callAI(req):
    genai.configure(api_key=GOOGLE_API_KEY)
    model = genai.GenerativeModel('gemini-pro')
    response = model.generate_content(req)

    return response.text