# docker_for_AI
Docker compose 把相關服務整合一起的工具包

要本地使用FlowiseAI服務，所以需要包含以下服務：
ollama -- 用來提供本地的LLM API服務
chroma -- 用來提供本地的Chroma API服務
mysql -- 用來提供本地的資料庫服務用來(flowiseai)
phpmyadmin -- 用來提供本地的資料庫管理介面

根據自動化流程的需求，需要包含以下服務：
n8n -- 用來提供本地的自動化流程服務
postgres -- 用來提供本地的資料庫服務用來(n8n)

## 服務列表

flowiseai
ollama
chroma
mysql

## 1. 安裝 Docker


## 2. 安裝 Docker Compose


## 3. 使用 Docker Compose 啟動服務

```bash
```

## 4. 使用 Docker Compose 停止服務

```bash
```

## 5. 使用 Docker Compose 重啟服務

```bash
```


執行以下指令
  
  ```bash
  docker-compose up
  ```

  如果已經有相關的服務在運行，可以只啟動特定的服務例如本地已經有ollama在運行，只需要啟動flowiseai、chroma、mysql服務

  ```bash
  docker-compose up flowise chroma mysql n8n
  ```

  ## 相關說明以及連結

  後續補充
