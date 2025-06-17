# Debezium MySQL → RabbitMQ → .NET Consumer

This project demonstrates a full pipeline using:

- **MySQL** with binary logging
- **Debezium Server** to capture DB changes (CDC)
- **RabbitMQ** as the event broker
- **.NET Consumer** app that listens for changes via AMQP

## 🔧 Prerequisites

- Docker + Docker Compose
- .NET 8 SDK (for local builds/test)

## 🚀 Getting Started

```bash
# 1. Clone this repo
git clone https://github.com/andrehalley6/debezium-mysql-rabbitmq-dotnet-demo.git
cd debezium-mysql-rabbitmq-dotnet-demo

# 2. Start all services
docker-compose -p debezium-mysql-rabbitmq-dotnet-demo up --build

# 3. Test it
Try to insert or update row data
```