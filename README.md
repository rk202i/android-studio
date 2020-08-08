build
```
sudo docker build -t android-studio .
```

run 

```
sudo docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" android-studio
```
