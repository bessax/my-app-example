# Imagem base
FROM python:3.9-slim

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos
COPY . .

# Instalar dependências
RUN pip install flask

# Expor porta
EXPOSE 5000

# Comando para iniciar
CMD ["python", "app.py"]