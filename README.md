# docker_for_AI
Docker compose 把相關服務整合一起的工具包

要本地使用FlowiseAI服務，所以需要包含以下服務：
ollama -- 用來提供本地的LLM API服務
chroma -- 用來提供本地的Chroma API服務
mysql -- 用來提供本地的資料庫服務用來(flowiseai)
phpmyadmin -- 用來提供本地的資料庫管理介面
openwebui -- 用來提供本地的Web UI服務

根據自動化流程的需求，需要包含以下服務：
n8n -- 用來提供本地的自動化流程服務
postgres -- 用來提供本地的資料庫服務用來(n8n)

## 服務列表

flowiseai
ollama
chroma
mysql
openwebui

## 1. 安裝 Dockerdocker-compose up -d

### Windows
1. 下載 [Docker Desktop for Windows](https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe)。
2. 執行安裝程式並按照指示完成安裝。
3. 安裝完成後，啟動 Docker Desktop。

### macOS
1. 下載 [Docker Desktop for Mac](https://desktop.docker.com/mac/stable/Docker.dmg)。
2. 打開下載的 `.dmg` 文件，將 Docker 拖到應用程式文件夾中。
3. 打開應用程式文件夾並啟動 Docker。

### Linux
1. 打開終端機並執行以下命令來安裝 Docker：
   ```bash
   sudo apt-get update
   sudo apt-get install \
       ca-certificates \
       curl \
       gnupg \
       lsb-release
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
   echo \
     "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   sudo apt-get update
   sudo apt-get install docker-ce docker-ce-cli containerd.io
   ```

## 2. 安裝 Docker Compose

### Windows 和 macOS
Docker Desktop 已經包含 Docker Compose，無需額外安裝。

### Linux
1. 執行以下命令來安裝 Docker Compose：
   ```bash
   sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   sudo chmod +x /usr/local/bin/docker-compose
   ```

## 2-1

### 修改env檔案

1. 複製 `.env.example` 檔案並命名為 `.env`。
2. 修改 `.env` 檔案中的 所需要修改的你的密碼、帳號等等。

### 建立資料夾指令

在終端機中在此目錄下執行以下指令來建立所需的資料夾存放資料：

```sh
mkdir ollama_data flowise_data mysql_data chroma_data n8n_data postgres_data openwebui_data
```

## 3. 使用 Docker Compose 啟動服務

```bash
docker-compose up -d
```

## 4. 使用 Docker Compose 停止服務

```bash
docker-compose down
```

## 5. 使用 Docker Compose 重啟服務

```bash
docker-compose restart
```

執行以下指令
  
  ```bash
  docker-compose up -d
  ```

  如果已經有相關的服務在運行，可以只啟動特定的服務例如本地已經有ollama在運行，只需要啟動flowiseai、chroma、mysql服務

  ```bash
  docker-compose up -d flowise chroma mysql n8n openwebui
  ```

  ## 相關說明以及連結

## 資料夾說明

  後綴是_data的資料夾是用來存放相關的資料，例如mysql的資料庫資料、chroma的模型資料等等。
  Vue-app是用來存放前端的程式碼，目前是用來展示單純的前端環境。(例如flowiseai單純前端的展示)

## TODO List

- [x] ollama 
- [x] openwebui

ps 在mac底下建議直接安裝 https://ollama.com/download 這個版本，因為使用docker版本不支援Apple GPU/NPU反而變慢

## 相關連結

[ollama](https://ollama.com/)
[chroma](https://www.trychroma.com/)
[flowiseai](https://flowiseai.com/)
[n8n](https://n8n.io/)


之後有需要其他的AI工具可以再跟我說我在加入