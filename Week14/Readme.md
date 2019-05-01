# Last Homework!

We didn't get time in class to cover vms ( like vmware ), containerization ( like docker + kubernetes/swarm/openshift ) or emulation ( like qemu ) though these are all interesting and important topics. So, for homework I'm going to assign you a little task to be done with containers.

I want you to set up a docker container on a virtual machine as described here:

1. https://docs.docker.com/get-started/
2. https://docs.docker.com/get-started/part2/

You need to be able to run the curl request in part2:

```
$ curl http://localhost:4000
```

and get a response as indicated in the tutorial. We'll discuss Docker in class to give you an idea of what it's all about before you set off to do your homework.

## Submission guidelines:

1. PR due by May 9th, 7PM sharp!
2. Instead of "Hello World!" your curl request should return "I am \<your name\>!".
3. Screenshot containing:
 a) $ whoami
 b) $ docker container ls
 c) $ curl http://localhost:4000




