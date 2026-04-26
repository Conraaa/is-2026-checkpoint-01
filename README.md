# TeamBoard App - IS-2026 🚀

## Checkpoint 01: Infraestructura y Orquestación con Docker

Este proyecto es una aplicación web funcional diseñada para gestionar y visualizar el estado de los servicios de un equipo de desarrollo. El objetivo principal de este checkpoint es establecer la base de la infraestructura utilizando **Docker**, **Docker Compose** y un flujo de trabajo colaborativo en **GitHub**.

---

## Integrantes del Grupo

| Nombre y Apellido | Legajo | Rol / Feature |
| :--- | :--- | :--- |
| Cemino, Conrado | 32058 | Feature 01: Coordinador |
| Castaño, Rodrigo | 33659 | Feature 02: Frontend Developer |
| Schneeberger, Ángeles | 33589 | Feature 03: Backend Developer |
| Zacarías, Paula | 33638 | Feature 04: Database Admin |
| Cortés, Matías | 31966 | Feature 05: Container Manager |

---

## Arquitectura del Proyecto

La aplicación está compuesta por los siguientes servicios orquestados:

1.  **Frontend (HTML/JS + Python HTTP Server):** Interfaz de usuario que consume la API del backend para mostrar la tabla de integrantes. Puerto `8080`.
2.  **Backend (Python/Flask + Gunicorn):** API REST que procesa las solicitudes, maneja el estado de salud y conecta con la base de datos. Puerto `5000`.
3.  **Database (PostgreSQL 16):** Almacena la información de los integrantes y sus estados, inicializada con un script SQL.
4.  **Portainer:** Herramienta gráfica de gestión y monitoreo de contenedores. Puerto `9000`.

---

## Instrucciones para Levantar el Proyecto

Sigue estos pasos para ejecutar la aplicación en tu entorno local:

### 1. Requisitos Previos
* Tener instalado [Docker Desktop](https://www.docker.com/products/docker-desktop/) y Docker Compose.
* Git instalado localmente.

### 2. Instalación y Despliegue
1.  **Clonar el repositorio:**
    ```bash
    git clone [https://github.com/](https://github.com/)[tu-usuario]/is-2026-checkpoint-01.git
    cd is-2026-checkpoint-01
    ```

2.  **Configurar variables de entorno:**
    Copia el archivo de plantilla y completa los valores necesarios (especialmente las credenciales de la DB).
    ```bash
    cp .env.example .env
    ```

3.  **Construir e iniciar los contenedores:**
    ```bash
    docker compose up -d --build
    ```

4.  **Verificar el estado:**
    ```bash
    docker compose ps
    ```

### 3. Accesos Locales
* **Frontend:** [http://localhost:8080](http://localhost:8080)
* **Backend API:** [http://localhost:5000/api/team](http://localhost:5000/api/team)
* **Portainer:** [http://localhost:9000](http://localhost:9000)

---

## Monitoreo de Contenedores (Portainer)


---
*Este proyecto fue desarrollado para la cátedra de Ingeniería y Calidad de Software (IS-2026).*