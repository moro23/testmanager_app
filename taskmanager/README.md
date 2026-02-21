# Task Manager REST API

A production-grade task management REST API built with Spring Boot, demonstrating clean architecture, JWT authentication, and professional development practices.

## Tech Stack

- **Java 21** + **Spring Boot 3.2**
- **Spring Data JPA** (Hibernate) for database access
- **Spring Security** + **JWT** for stateless authentication
- **PostgreSQL 16** for data persistence
- **Flyway** for database migrations
- **SpringDoc OpenAPI** for API documentation
- **JUnit 5** + **MockMvc** for testing
- **Docker Compose** for local infrastructure

## Getting Started

### Prerequisites

- Java 21
- Maven 3.9+
- Docker & Docker Compose

### Run the database

```bash
docker-compose up -d
```

### Run the application

```bash
mvn spring-boot:run
```

### Run tests

```bash
mvn test
```

### API Documentation

Once running, visit: http://localhost:8080/swagger-ui.html

## Project Structure

```
src/main/java/com/taskmanager/
├── config/        # App configuration (Security, Swagger)
├── controller/    # REST endpoints
├── dto/           # Request/Response objects
├── entity/        # JPA entities (database models)
├── exception/     # Custom exceptions + global error handler
├── repository/    # Database access layer
├── security/      # JWT authentication
└── service/       # Business logic
```

## API Endpoints

| Method | Endpoint             | Description        | Auth Required |
| ------ | -------------------- | ------------------ | ------------- |
| POST   | `/api/auth/register` | Register new user  | No            |
| POST   | `/api/auth/login`    | Login, receive JWT | No            |
| GET    | `/api/tasks`         | List user's tasks  | Yes           |
| POST   | `/api/tasks`         | Create a task      | Yes           |
| GET    | `/api/tasks/{id}`    | Get task by ID     | Yes           |
| PUT    | `/api/tasks/{id}`    | Update a task      | Yes           |
| DELETE | `/api/tasks/{id}`    | Delete a task      | Yes           |

## Key Design Decisions

- **Flyway over Hibernate ddl-auto**: Database schema is version-controlled via SQL migrations, not auto-generated. This is how production systems work.
- **JWT over sessions**: Stateless authentication makes the API horizontally scalable.
- **DTO pattern**: API contracts (DTOs) are separate from database entities, preventing internal schema leaks.
- **Global exception handling**: Consistent error responses via `@ControllerAdvice`.

## License

MIT
