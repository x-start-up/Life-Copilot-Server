# Life-Copilot-Server

## 启动项目

> 项目环境 go 1.18

初始化

```bash
go install github.com/cloudwego/hertz/cmd/hz@latest
go mod tidy
```

## 开发

先更新 ```idl/main.thrift``` 文件的接口定义，然后执行下述命令更新项目
```bash
hz update -idl idl/main.thrift
```


