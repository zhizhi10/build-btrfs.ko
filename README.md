# Build btrfs.ko

```
docker build -t btrfs-ko --build-arg version=5.10.50-44.131.amzn2 .
containerId=$(docker create btrfs-ko )
docker cp $containerId:/root/linux-btrfs-softlockup/fs/btrfs/btrfs.ko .
docker rm $containerId
docker rmi btrfs-ko
ls btrfs.ko
```
## support version
```
5.10.50-44.131.amzn2 
5.10.50-44.132.amzn2 
5.10.59-52.142.amzn2
5.10.62-55.141.amzn2
5.10.68-62.173.amzn2 
5.10.75-79.358.amzn2
5.10.82-83.359.amzn2
5.10.93-87.444.amzn2
5.10.96-90.460.amzn2
5.10.102-99.473.amzn2 
5.10.106-102.504.amzn2 
5.10.109-104.500.amzn2
5.10.112-108.499.amzn2
5.10.118-111.515.amzn2
5.10.126-117.518.amzn2 
5.10.130-118.517.amzn2
5.10.135-122.509.amzn2
5.10.144-127.601.amzn2
5.10.147-133.644.amzn2 
5.10.149-133.644.amzn2 
5.10.155-138.670.amzn2
5.10.157-139.675.amzn2
5.10.162-141.675.amzn2
5.10.165-143.735.amzn2
5.10.167-147.601.amzn2 
5.10.173-154.642.amzn2
5.10.176-157.645.amzn2
5.10.177-158.645.amzn2
5.10.178-162.673.amzn2
5.10.179-166.674.amzn2 
5.10.179-168.710.amzn2
5.10.179-171.711.amzn2
5.10.184-174.730.amzn2
5.10.184-175.731.amzn2 
5.10.184-175.749.amzn2 
5.10.186-179.751.amzn2
5.10.192-182.736.amzn2
5.10.192-183.736.amzn2
5.10.196-185.743.amzn2
5.10.197-186.748.amzn2 
```