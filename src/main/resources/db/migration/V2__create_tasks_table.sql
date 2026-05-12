-- V2: Create tasks table

CREATE TABLE tasks (
    id              BIGSERIAL PRIMARY KEY,
    title           VARCHAR(200)  NOT NULL,
    description     TEXT,
    status          VARCHAR(20)   NOT NULL DEFAULT 'TODO',
    priority        VARCHAR(20)   NOT NULL DEFAULT 'MEDIUM',
    due_date        DATE,
    user_id         BIGINT        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at      TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP     NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_tasks_user_id ON tasks(user_id);
CREATE INDEX idx_tasks_status ON tasks(status);
CREATE INDEX idx_tasks_priority ON tasks(priority);
CREATE INDEX idx_tasks_due_date ON tasks(due_date);
```

---

### 1.8 Create `.gitignore`

Create file: `.gitignore` (in project root)
```
# Build output
target/
build/
*.class
*.jar
*.war

# IDE files
.idea/
*.iml
*.iws
*.ipr
.classpath
.project
.settings/
.vscode/

# Maven wrapper
.mvn/wrapper/maven-wrapper.jar

# OS files
.DS_Store
Thumbs.db

# Logs
*.log
logs/

# Secrets
.env
*.env.local
application-local.properties