FROM python:3.11.4

WORKDIR /Gemini-Project

COPY requirements.txt /Gemini-Project/

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . /Gemini-Project/

EXPOSE 5000

ENV NAME venv

CMD ["python", "main.py"]