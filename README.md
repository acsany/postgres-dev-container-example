# Postgres Dev Container Example

This project uses VS Code Dev Containers to work with a Postgres Database, which runs in its own Docker container.

## Prerequisites

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Install [Visual Studio Code](https://code.visualstudio.com/)
3. Install the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) in VS Code

## Getting Started

1. Clone this repository to your local machine
2. Copy the environment file:
   ```bash
   cp .env.sample .env
   ```
3. Open the project in VS Code
4. When prompted, click "Reopen in Container" or:
   - Press `F1` or `Cmd/Ctrl + Shift + P`
   - Type "Dev Containers: Reopen in Container"
   - Press Enter

VS Code will build the dev container and set up the environment. This may take a few minutes the first time.

## Working with the Dev Container

- The container provides a consistent development environment with all necessary dependencies
- Your code changes are automatically synchronized between your local machine and the container
- Terminal windows in VS Code will run inside the container
- Extensions and settings specified in `.devcontainer/devcontainer.json` will be automatically installed

## Database Scripts

This project includes several shell scripts to manage the database:

1. Initialize the database:
   ```bash
   ./scripts/create_table.sh
   ```
   Creates the messages table if it doesn't exist.

2. Add a new message:
   ```bash
   ./scripts/add_entry.sh "Your message here"
   ```
   Inserts a new message into the database.

3. View all messages:
   ```bash
   ./scripts/show_entries.sh
   ```
   Displays all messages in chronological order (newest first).


