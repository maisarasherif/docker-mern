# MERN Stack Application
I followed this tutorial to build a Full-Stack application using MongoDB, Express, React and Node.js (MERN).
link: https://www.youtube.com/watch?v=enOsPhp2Z6Q&list=WL&index=3&t=355s

Conatinerized the app using Docker and Docker-Compose.
built the Frontend and Backend separately using Dockerfiles to construct their respective containers in addition to a MongoDB container to store the data.
bring up the service using docker-compose.yml file.

## Features
- **User Management:** Create, read, update, and delete user profiles.
- **Responsive Frontend:** Built with React and Vite for a seamless user experience.
- **RESTful API:** Developed with Express to handle requests and responses.
- **Data Storage:** MongoDB used for persistent data storage.

## Tech Stack
- **Frontend:** React, Vite, Axios
- **Backend:** Node.js, Express
- **Database:** MongoDB
- **Containerization:** Docker, Docker Compose

## Prerequisites
- Install [Docker](https://docs.docker.com/get-docker/)
- Install [Docker Compose](https://docs.docker.com/compose/install/)

## Clone the Repository and run the application
```bash
git clone <repository-url>
cd <repository-directory>
docker-compose up --build
```
## Access the application:
### local:
Frontend: http://localhost:5173
Backend: http://localhost:5000
### cloud:
Frontend: http://<public cloud VM IP>:5173
Backend: http://<public cloud VM IP>:5000
### Note: enable inbound rules for ports 5173 and 5000

