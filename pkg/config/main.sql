CREATE TABLE users
(
    user_id         INT          NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'primary key',
    username        VARCHAR(255) NOT NULL COMMENT 'username',
    email           VARCHAR(255) NOT NULL COMMENT 'email',
    password        VARCHAR(255) NOT NULL COMMENT 'hashed password',
    avatar          VARCHAR(255) COMMENT 'avatar image url',
    register_method VARCHAR(50) COMMENT 'registration method',
    is_active       BOOLEAN      NOT NULL DEFAULT TRUE COMMENT 'is account active',
    is_admin        BOOLEAN      NOT NULL DEFAULT FALSE COMMENT 'is admin user',
    deleted_at      TIMESTAMP    NULL COMMENT 'soft delete timestamp',
    create_at       TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create timestamp',
    update_at       TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update timestamp'
);

CREATE TABLE categories
(
    category_id INT          NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'primary key',
    name        VARCHAR(255) NOT NULL COMMENT 'category name',
    creator     VARCHAR(255) NOT NULL COMMENT 'category creator',
    deleted_at  TIMESTAMP    NULL COMMENT 'soft delete timestamp',
    create_at   TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create timestamp',
    update_at   TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update timestamp'
);

CREATE TABLE todos
(
    todo_id     INT          NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'primary key',
    title       VARCHAR(255) NOT NULL COMMENT 'todo title',
    description TEXT COMMENT 'todo description',
    type_       VARCHAR(50) COMMENT 'todo type',
    deadline    TIMESTAMP    NULL COMMENT 'deadline timestamp',
    status_     VARCHAR(50)  NOT NULL DEFAULT 'open' COMMENT 'todo status',
    user_id     INT          NOT NULL COMMENT 'owner user id',
    deleted_at  TIMESTAMP    NULL COMMENT 'soft delete timestamp',
    create_at   TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create timestamp',
    update_at   TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update timestamp'
);

CREATE TABLE pushers
(
    pusher_id  INT          NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'primary key',
    name       VARCHAR(255) NOT NULL COMMENT 'pusher name',
    config     JSON COMMENT 'pusher config',
    type_      VARCHAR(50)  NOT NULL COMMENT 'pusher type',
    user_id    INT          NOT NULL COMMENT 'owner user id',
    deleted_at TIMESTAMP    NULL COMMENT 'soft delete timestamp',
    create_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create timestamp',
    update_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update timestamp'
);