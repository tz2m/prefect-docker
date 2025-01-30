# Prefect-Docker

This project provides a **Docker Compose** setup for running **Prefect Server** along with a **PostgreSQL database**.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup

### 1. Clone the repository

```sh
git clone https://github.com/tz2/prefect-docker.git
cd prefect-docker2
```

### 2. Create a `.env` file

Create a `.env` file in the project root and define the necessary environment variables:

```env
POSTGRES_PASSWORD=your_secure_password
PREFECT_SERVER_API_AUTH_STRING=your_auth_string
```

### 3. Start the Services

Run the following command to start Prefect Server and PostgreSQL:

```sh
docker compose up -d
```

This will start:

- **Prefect Server** on port `4200`
- **PostgreSQL** as the database for Prefect

### 4. Access Prefect UI

Once the services are running, open [**http://localhost:4200**](http://localhost:4200) in your browser to access the Prefect UI.

## Stopping the Services

To stop and remove the containers, run:

```sh
docker compose down
```

## Troubleshooting

- If you encounter permission issues, try running:
  ```sh
  sudo docker compose up -d
  ```
- To check logs:
  ```sh
  docker compose logs -f
  ```

## Contributing

Feel free to fork this repository and submit pull requests with improvements.

## License

This project is licensed under the **Apache License 2.0**.
