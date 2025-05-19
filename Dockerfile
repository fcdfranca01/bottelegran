FROM python:3.10-slim

WORKDIR /app

# Instala as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código
COPY . .

# Executa o bot
CMD ["python", "bot_rapido_corrigido.py"]
