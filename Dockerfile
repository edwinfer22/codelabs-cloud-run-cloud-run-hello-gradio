  # Usa una imagen base de Python
    2     FROM python:3.9-slim-buster
    3
    4     # Establece el directorio de trabajo en el contenedor
    5     WORKDIR /app
    6
    7     # Copia el archivo de requisitos e instala las dependencias
    8     COPY requirements.txt .
    9     RUN pip install --no-cache-dir -r requirements.txt
   10
   11     # Copia el código de tu aplicación
   12     COPY . .
   13
   14     # Expone el puerto que usará tu aplicación
   15     EXPOSE 8080
   16
   17     # Comando para ejecutar la aplicación cuando el contenedor se inicie
   18     CMD ["uvicorn", "main:iface", "--host", "0.0.0.0", "--port", "8080"]