# Street-Gallery | E-commerce Platform

[![Python](https://img.shields.io/badge/Python-3.12-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Django](https://img.shields.io/badge/Django-5.2-092E20?style=for-the-badge&logo=django&logoColor=white)](https://www.djangoproject.com/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

**Street-Gallery** es una plataforma de comercio electrónico de alto rendimiento diseñada para la venta de indumentaria urbana y arte curado. Construida con **Django** y orquestada con **Docker**, la aplicación ofrece una experiencia de usuario fluida, desde la navegación de productos hasta el procesamiento de pagos seguro.

---

## Características Principales (Core Features)

* **Gestión de Catálogo Dinámico:** Implementación de tablas para categorías y productos con filtrado funcional y búsqueda personalizada.
* **Sistema de Carrito de Compras:** Manejo de lógica de persistencia mediante Sesiones de Django (Insertar, Actualizar, Eliminar).
* **Módulo de Clientes y Pedidos:** Sistema de autenticación (Login/Registro) y gestión de perfiles utilizando Django Forms.
* **Pasarela de Pago con PayPal:** Integración completa con **PayPal Sandbox** para el procesamiento de pagos seguro.
* **Notificaciones por Correo:** Envío de emails de confirmación automatizados utilizando **Mailtrap** para pruebas de entorno.
* **Panel de Administración Premium:** Interfaz moderna y optimizada mediante el uso de **Django Unfold**.
* **Arquitectura Profesional:** Desarrollo basado en el patrón **MTV** (Model-Template-View) y contenedorización completa.

---

## Tecnologías Utilizadas (Built With)

### Núcleo y Backend
* **Python 3.12.0** & **Django 5.2**
* **MySQL** - Motor de base de datos relacional.
* **Pillow** - Manejo de imágenes de productos.

### Infraestructura y Despliegue (Fase de Producción)
* **Docker & Docker Compose** - Containerización y orquestación de servicios.
* **Variables de Env (.env)** - Gestión segura de credenciales (Mailtrap, PayPal, DB).
* **Gunicorn** - Servidor HTTP WSGI para producción.

### Integraciones Externas
* **PayPal Checkout** (django-paypal) - Pasarela de pagos.
* **Mailtrap** - Servidor SMTP para pruebas de correo electrónico.

### Frontend y Diseño
* **Bootstrap 5** - Diseño responsive y moderno.
* **HTML5 / CSS3 (Less) / JavaScript** - Estructura y dinamismo.
* **Ionicons & FontAwesome** - Paquetes de iconografía profesional.

---

## Instalación y Configuración
Puedes ejecutar este proyecto de dos formas: usando Docker (recomendado para replicar el entorno de producción) o de forma Local en tu sistema operativo.

### Opción A: Ejecución con Docker (Recomendado) 

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/myupanquirondo/Street-Gallery.git
   cd Street-Gallery

2. **Configurar Variables de Entorno:**
   Crea un archivo .env dentro de /app y guiate del archivo de ejemplo .env.example

3. **Levantar el proyecto:**
   ```bash
   docker-compose up -d --build

4. **Acceso:**
   La aplicación estará disponible en: http://localhost:8080

### Opción B: Ejecución Local 
Usa esta opción si prefieres trabajar directamente sobre tu instalación de Python y MySQL en Windows.

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/myupanquirondo/Street-Gallery.git
   cd Street-Gallery

2. **Crear y Activar Entorno Virtual:**
   ```bash
   python -m venv venv
   # Activar en Windows:
   .\venv\Scripts\activate

3. **Instalar Dependencias:**
   ```bash
   pip install -r requirements.txt

4. **Configurar la Base de Datos:**
   - Crea un esquema en MySQL Workbench llamado db_streetgallery.
   - Crea tu archivo .env dentro de app (y usa el ejejmplo de .env.example).
   - Importante: Asegúrate de que en el .env el valor de DATABASE_HOST sea localhost.
  
5. **Ejecutar Migraciones y Servidor:**
   python manage.py migrate
   python manage.py runserver
