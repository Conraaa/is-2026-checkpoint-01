# Usamos la imagen oficial de Python
FROM python:3.12-slim

# Definimos dónde se guardarán los archivos dentro del contenedor
WORKDIR /app

# Copiamos la carpeta html al contenedor
COPY html/ /app/

# Exponemos el puerto 8080
EXPOSE 8080

# Comando para arrancar el servidor web de Python
CMD ["python3", "-m", "http.server", "8080"]