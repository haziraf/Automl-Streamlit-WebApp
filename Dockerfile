FROM python:3.10-slim

WORKDIR /automl

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/haziraf/Automl-Streamlit-WebApp.git .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

CMD ["streamlit", "run", "src/Home.py", "--server.port=8501", "--server.address=0.0.0.0"]