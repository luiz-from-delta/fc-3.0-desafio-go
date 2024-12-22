# Full Cycle 3.0 → Docker → Desafio GO

Este repositório contém a solução para o desafio da **Full Cycle** (curso Full Cycle 3.0) que requer a criação de uma imagem Docker otimizada executando a linguagem Go.

---

## 📝 Descrição do Desafio

1. Criar um projeto simples em **Go** que exibe a mensagem:

**Full Cycle rocks!**

2. Publicar uma imagem no Docker Hub que, ao ser executada, exiba a mensagem acima no console.

Comando de execução:

```bash
docker run <usuario>/<imagem>
```

3. Garantir que a imagem tenha menos de 2 MB.

## Solução do Desafio

### 🚀 Como Executar

1. Baixe a imagem do Docker Hub (opcional):

```bash
docker pull luizitos/fc-3.0-desafio-go:latest
```

2. Execute a imagem Docker:

```bash
docker run --rm luizitos/fc-3.0-desafio-go
```

3.  Resultado esperado:

```
Full Cycle rocks!
```

### 🛠️ Tecnologias Utilizadas

- GoLang: Linguagem utilizada para desenvolver o projeto e gerar o executável.
- Docker: Plataforma utilizada para a construção e execução de containers.
- Docker Hub: Container registry utilizado para a publicação da imagem criada.
- Imagem Scratch: Docker image com conteúdo mínimo que serve de base para a criação de outras imagens Docker extremamente leves.

### 🐋 Imagem no Docker Hub

A imagem está disponível no Docker Hub e pode ser acessada no seguinte link:

👉 [luizitos/fc-3.0-desafio-go](https://hub.docker.com/r/luizitos/fc-3.0-desafio-go)

### 📂 Estrutura do Projeto

- main.go: Arquivo principal que imprime a mensagem.
- Dockerfile: Arquivo utilizado para a criação da imagem Docker.

### 📦 Construção e Publicação da Imagem

1. Construção da imagem:

```bash
docker build -t luizitos/fc-3.0-desafio-go .
```

2. Verificação do tamanho da imagem:

```bash
docker image ls --format "{{.Size}}" luizitos/fc-3.0-desafio-go
```

3. Testar localmente:

```bash
docker run --rm luizitos/fc-3.0-desafio-go
```

### 💻 Publicação no Docker Hub:

1. Faça login no Docker Hub (caso não esteja logado):

```bash
docker login
```

2. Faça o push da imagem:

```bash
docker push luizitos/fc-3.0-desafio-go
```

### 📖 Aprendizados

- Uso de imagens mínimas (partindo de scratch) para reduzir o tamanho da imagem.
- Criação de imagens adotando o conceito de Multistage Building para separar as etapas do processo de build, garantindo eficiência e redução do tamanho da imagem.
- Desenvolvimento, compilação e compressão de binários estáticos com GoLang.
- Criação e execução de imagens Docker.
- Publicação de imagens no Docker Hub.

### 🏆 Desafio Concluído!

Este projeto demonstra de maneira simples e objetiva como criar imagens Docker otimizadas utilizando a scratch image e o conceito de Multistage Building.

#### Bônus

- Pacote upx: utilizado na compressão do arquivo binário gerado pelo Go.
- Uso da flag `-ldflags="-s -w"`: para remover a tabela de símbolos e informações de depuração do binário.

Ambos utilizados com o objetivo de reduzir ainda mais o tamanho da imagem.

**Tamanho da imagem base (golang:alpine):** 243.87 MB
**Tamanho da imagem mínima (solução do desafio):** 432.63 KB
