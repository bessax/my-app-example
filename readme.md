# Exemplo do slide Devops & Cloud - Disciplina Engenharia de Software II - cursos de Sistema de Informação Multivix Cachoeiro

# 🐳 Exemplo Simples com Docker (Flask)

Este projeto demonstra como empacotar e executar uma aplicação simples em Python utilizando Docker, garantindo portabilidade e facilidade de execução em qualquer ambiente.

## 📌 Descrição

A aplicação consiste em uma API básica utilizando Flask que retorna a mensagem:

```
Olá, testando Docker!
```



## 🧱 Estrutura do Projeto
meu-app-example/
├── app.py
└── Dockerfile

## 🧠 Código da Aplicação

### app.py
```python
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Olá, Docker!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```

### Dockerfile

```
FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install flask

EXPOSE 5000

CMD ["python", "app.py"]
```

## 🔧 Configuração do ambiente

```
mkdir meu-app-exemple
cd meu-app
```

## 🚀 Como Executar

```
docker build -t meu-app .
```

```
docker run -p 5000:5000 meu-app
```

## 🌐 Acessando a Aplicação
```
http://localhost:5000
```
