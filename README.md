# Yhatzi Crew

Welcome to the Yhatzi Crew project, powered by [crewAI](https://crewai.com). This template is designed to help you set up a multi-agent AI system with ease, leveraging the powerful and flexible framework provided by crewAI. Our goal is to enable your agents to collaborate effectively on complex tasks, maximizing their collective intelligence and capabilities.

## Installation

Ensure you have Python >=3.10 <=3.13 installed on your system. This project uses [UV](https://docs.astral.sh/uv/) for dependency management and package handling, offering a seamless setup and execution experience.

First, if you haven't already, install uv:

```bash
pip install uv
```

Next, navigate to your project directory and install the dependencies:

(Optional) Lock the dependencies and install them by using the CLI command:
```bash
crewai install
```
### Customizing

**Add your `OPENAI_API_KEY` into the `.env` file**

- Modify `src/yhatzi/config/agents.yaml` to define your agents
- Modify `src/yhatzi/config/tasks.yaml` to define your tasks
- Modify `src/yhatzi/crew.py` to add your own logic, tools and specific args
- Modify `src/yhatzi/main.py` to add custom inputs for your agents and tasks

## Running the Project

To kickstart your crew of AI agents and begin task execution, run this from the root folder of your project:

```bash
$ crewai run
```

This command initializes the yhatzi Crew, assembling the agents and assigning them tasks as defined in your configuration.

This example, unmodified, will run the create a `report.md` file with the output of a research on LLMs in the root folder.

## Understanding Your Crew

The yhatzi Crew is composed of multiple AI agents, each with unique roles, goals, and tools. These agents collaborate on a series of tasks, defined in `config/tasks.yaml`, leveraging their collective skills to achieve complex objectives. The `config/agents.yaml` file outlines the capabilities and configurations of each agent in your crew.

## Support

For support, questions, or feedback regarding the Yhatzi Crew or crewAI.
- Visit our [documentation](https://docs.crewai.com)
- Reach out to us through our [GitHub repository](https://github.com/joaomdmoura/crewai)
- [Join our Discord](https://discord.com/invite/X4JWnZnxPb)
- [Chat with our docs](https://chatg.pt/DWjSBZn)

Let's create wonders together with the power and simplicity of crewAI.


# CrewAI with PostgreSQL Setup Guide

This guide details how to set up CrewAI with a PostgreSQL database in a Docker container on a new VM.

## Prerequisites

- Linux VM with sudo access
- Docker installed
- Python 3.x installed
- Git installed

## Installation Steps

### 1. System Dependencies


bash
Update package list
sudo apt-get update
Install Python development tools and PostgreSQL client
sudo apt-get install -y python3-dev libpq-dev
Install uv (faster pip alternative)
curl -LsSf https://astral.sh/uv/install.sh | sh


### 2. PostgreSQL Docker Setup

bash
Pull PostgreSQL image
docker pull postgres:latest
Create a directory for PostgreSQL data
mkdir -p ~/postgres-data
Run PostgreSQL container
docker run -d \
--name postgres-db \
-e POSTGRES_PASSWORD=your_password \
-e POSTGRES_DB=your_dbname \
-v ~/postgres-data:/var/lib/postgresql/data \
-p 5432:5432 \
postgres:latest

### 3. Project Setup


bash
Clone the repository
git clone <your-repo-url>
cd <repo-directory>
Create and activate virtual environment
python -m venv .venv
source .venv/bin/activate
Install dependencies using uv
uv pip install psycopg2-binary python-dotenv pandas


### 4. Environment Configuration

Create a `.env` file in the project root:

env
DATABASE_URL=postgresql://postgres:your_password@localhost:5432/your_dbname
AZURE_OPENAI_ENDPOINT=your_azure_endpoint
OPENAI_API_KEY=your_api_key
AZURE_OPENAI_VERSION=your_azure_version
AZURE_OPENAI_DEPLOYMENT=your_deployment_name
AZURE_OPENAI_MODEL_NAME=your_model_name

### 5. Database Setup

The repository includes several scripts for database management:

1. **Clean existing tables** (if needed):

bash
python cleanup_db.py

2. **Create and populate tables**:

bash
python create_and_populate_db.py

3. **Verify data**:
bash
python verify_data.py