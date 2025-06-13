# Calendar.io

## How to run a local development server?

We created a Makefile to make it easier to set up and run this environment. Here are the available commands:

### Setup Commands

- `make composer-install`: Install PHP dependencies using Composer inside the Docker container
- `make npm-install`: Install Node.js dependencies using NPM inside the Docker container
- `make install`: Run both composer-install and npm-install commands

### Running the Application

- `make migrate`: Run database migrations inside the Docker container
- `make dev`: Run pending migrations and start the application server in detached mode (which, because of compose.yml, will start the database and vite first)
- `make build-dev`: Build Docker service (default: app). Use `SERVICE=service_name` to specify a different service and `REBUILD=true` to build without cache

## Quick Start

To quickly set up and run the application:

1. `make install` - Install all dependencies
2. `make dev` - Migrate the database and start the application

You can also run multiple targets in a single command, for example: `make install dev` will install all dependencies and then start the application.
