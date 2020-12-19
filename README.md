## 💻 SQL made ease with Docker
As a **developer** your primary job is solving problems by writing code and sometimes you have to deal with tools like SQL Server, ... That's why you need to automate and make it simple the process of dealing with the third part tools. 
<h1 align="center">
    <img alt="restored-db-sample-in-ssms" title="restored-db-sample-in-ssms" src=".github/sample.PNG" />
</h1>

### 🧠🧘🏿‍ How to build image
```
docker build -t restore-db:latest .
```
### How to detach the container
```
docker run -p 11433:1433 -d restore-db:latest 
```
> **11433** - is the mapped port where SQL Server will be responding on your physical machine
> **1433** - defalut sql server port inside the running container (if not changed)
### How to stop and remove the container
```
docker stop ID1
```
```
docker rm ID1
```
> **ID1** - first 3 characters of the given id to the container 
### How to remove the image
```
docker rmi restore-db:latest
```
