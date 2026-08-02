# SmartWaste Cloud

A personal, cloud-based smart waste management application showcasing a microservices-style architecture. It uses Docker, Nginx, Node.js, Python (Flask), and PostgreSQL to demonstrate smart bin monitoring, priority scoring, route planning, and overflow alerts.

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
   * **Backend API**: `http://localhost:3000/api/health`
   * **ML Service**: `http://localhost:5000/health`

## Fast Cloud Deployment (Render)

This project is now set up for a simple one-service deployment on Render.

1. Push the project to GitHub.
2. Create a new Web Service on Render and connect the repository.
3. Use the existing [render.yaml](render.yaml) configuration.
4. Render will start the Node app, which serves the frontend and API.

> Netlify is suitable for the frontend only. For this project, Render is the simpler full-stack option because it can host the Node app and its API together.

## Tech Stack
* **Frontend**: HTML5, CSS3, Vanilla JS
* **Gateways/Proxy**: Nginx
* **Backend**: Node.js
* **Machine Learning**: Python, Flask, Gunicorn
* **Database**: PostgreSQL
* **Containerization**: Docker, Docker Compose
