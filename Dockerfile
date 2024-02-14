FROM pikanezi/llama.cpp.full:v1

WORKDIR /app

COPY docker/volumes/models /models

EXPOSE 8080

CMD ["--server", "-m", "/models/mistral-7b-instruct-v0.2.Q4_K_M.gguf", "--host", "0.0.0.0", "--port", "8080", "-c", "2048"]
