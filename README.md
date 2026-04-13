# SmartWaste Cloud

A comprehensive, cloud-based smart waste management application showcasing a microservices architecture. It utilizes Docker, Nginx, Node.js, Python (Flask), and PostgreSQL.

## Architecture

* **Frontend**: Responsive HTML/CSS/JS application served by an Nginx reverse proxy.
* **Backend API**: Node.js/Express service managing business logic, users, and bins.
* **ML Service**: Python/Flask microservice running predictive analytics and optimizing garbage collection routes.
* **Database**: PostgreSQL for persistent schema, user data, and historical records.

## Local Deployment (Docker Compose)

The entire architecture is containerized and ready to deploy locally using Docker Compose.

1. Ensure **Docker** and **Docker Compose** are installed.
2. Navigate to the `docker` directory:
   ```bash
   cd docker
   ```
3. Build and launch the containers:
   ```bash
   docker-compose up --build -d
   ```
4. Access the application:
   * **Web Interface**: [http://localhost](http://localhost)
   * **Backend API**: `http://localhost/api`
   * **ML Service**: `http://localhost/ml`

## Tech Stack
* **Frontend**: HTML5, CSS3, Vanilla JS
* **Gateways/Proxy**: Nginx
* **Backend**: Node.js
* **Machine Learning**: Python, Flask, Gunicorn
* **Database**: PostgreSQL
* **Containerization**: Docker, Docker Compose
