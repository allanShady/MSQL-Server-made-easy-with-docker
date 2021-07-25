## 💻 SQL made ease with Docker
As a **developer** your primary job is solving problems by writing code and sometimes you have to deal with tools like SQL Server, ... That's why you need to automate and make it simple the process of dealing with the third part tools. 
<h1 align="center">
    <img alt="restored-db-sample-in-ssms" title="restored-db-sample-in-ssms" src=".github/sample.PNG" />
</h1>

#### 🧠 Building the image
```
docker build -t restore-db:latest .
```
#### 🚀 Provisioning a container based on the previous image

```
docker run -p 11433:1433 -d restore-db:latest 

```

> **11433** - is the mapped port where SQL Server will be responding on your physical machine
> **1433** - exposed and defalut sql server port inside the running container (if not changed)

#### ❌ Stoping the container 
```
docker stop <container_id>
```

#### ❌ Removing the container
```
docker rm <container_id>
```

> **<container_id>** - you can just use the first 3 characters of the given id to the container. Sometimes You will need add more chars. also you can use the ***container name***, instead of, ***container id***

> 
#### ❌ Removing the image
```
docker rmi restore-db:latest
```
