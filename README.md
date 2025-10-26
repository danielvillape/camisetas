# 🧢 Jerseys Medellín – Página Web de Venta de Camisetas

Este proyecto consiste en una página web sencilla para la **venta de camisetas de fútbol**, desplegada mediante **Docker**.  
Fue desarrollado como trabajo final del curso de **Telemática**, con el objetivo de aplicar los conceptos de **contenedorización, despliegue y automatización** de servicios web.

---

## 🧩 Estructura del Proyecto
📦 JerseysMedellin/
┣ 📜 Dockerfile
┣ 📜 index.html
┣ 📂 assets/
┃ ┣ 📂 img/ → Imágenes de las camisetas
┗ 📜 README.md

---

## ⚙️ Manual del Desarrollador

### 🔹 Requisitos previos

Antes de desplegar el proyecto, asegúrate de tener instalado:

- [Docker](https://www.docker.com/get-started)
- [Git](https://git-scm.com/downloads)
- Navegador web para visualizar la página

---

### 🔹 Clonar el repositorio

```bash
git clone https://github.com/TU-USUARIO/JerseysMedellin.git
cd JerseysMedellin
```

---

### 🔹 Construir la imagen Docker

Dentro del directorio del proyecto, ejecuta:

sudo docker build -t jerseys-medellin .

---

### 🔹 Ejecutar el contenedor

Una vez creada la imagen, inicia el contenedor:

sudo docker run -d -p 80:80 jerseys-medellin

---

### 🔹 Verificar el despliegue

Si es local:
http://localhost

Si lo desplegaste en una instancia remota:
http://<IP_PÚBLICA_DE_TU_INSTANCIA>

---

### 🛠️ Configuración y Modificación

📄 Modificar el contenido

- Abre el archivo index.html con un editor de texto (por ejemplo, Visual Studio Code).

- Realiza los cambios necesarios (texto, imágenes, enlaces, etc.).

- Guarda los cambios y reconstruye la imagen Docker para aplicarlos:

sudo docker build -t jerseys-medellin .
sudo docker run -d -p 80:80 jerseys-medellin

---

### 🧱 Estructura del Dockerfile
# Imagen base
FROM nginx:latest

# Copiar los archivos del sitio al directorio raíz de NGINX
COPY index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/

# Exponer el puerto 80
EXPOSE 80

---

### 👨‍💻 Autor

Daniel Villa

Estudiante de Ingeniería de sistemas en la Universidad Pontificia Bolivariana (UPB)

Profesor: Carlos Zuluaga

Curso: Telemática
