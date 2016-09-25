# docker s3fuse

```
docker run -it --cap-add SYS_ADMIN --device /dev/fuse --privileged=true --rm test sh -c "echo $AWS_ACCESS_KEY_ID:$AWS_SECRET_ACCESS_KEY > /etc/passwd-s3fs; chmod 400 /etc/passwd-s3fs; cat /etc/passwd-s3fs; mkdir /s3; s3fs shomb /s3 -f -o passwd_file='/etc/passwd-s3fs' -d -d -f -o f2 -o curldbg"
```
