-- 創建資料庫
CREATE DATABASE IF NOT EXISTS flowise_demo_db;

-- 創建使用者並授權給 flowise_demo_db
CREATE USER 'flowise_demo_user'@'%' IDENTIFIED BY 'flowise_demo_password';
GRANT ALL PRIVILEGES ON flowise_demo_db.* TO 'flowise_demo_user'@'%';

FLUSH PRIVILEGES;