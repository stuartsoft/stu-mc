```
$ docker build . -t stu-mc
$ docker volume create mc-server00
$ docker run -d -p 25565:25565 -v mc-server00:/mcdata stu-mc
```
