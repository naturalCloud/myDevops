## redis集群初始化

```shell
#进入任意一台机器
docker exec -it redis-node-1 bash
redis-cli --cluster create  192.168.0.103:6381 \
192.168.0.103:6382 \
192.168.0.103:6383 \
192.168.0.103:6384 \
192.168.0.103:6385 \
192.168.0.103:6386 \
--cluster-replicas 1
```

