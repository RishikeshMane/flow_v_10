
CONTAINER=container1

# Check if container exist and delete
if [ "$(docker ps -a | grep -c $CONTAINER)" -gt 0 ]; then

    docker rm -f $CONTAINER 
    echo "[---- Deleted container $CONTAINER]"

else
  echo "[---- Container with name: $CONTAINER  doesn't exist. ]"
fi

exit
