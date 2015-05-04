Container for creating MongoDB backups

Usage:

```bash
NAME_OF_MONGO_CONTAINER=my-mongo-container
DUMP_DIRECTORY=/tmp/dump
NAME_OF_MONGO_DB=my-mongo-db

docker run --rm \
  --link NAME_OF_MONGO_CONTAINER:mongo \
  --volume $DUMP_DIRECTORY:/dump \
  -e DB:$NAME_OF_MONGO_DB \
  vfarcic/mongo-dump
```