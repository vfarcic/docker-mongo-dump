#!/usr/bin/env bash

set -e

: ${HOST:=mongo}
: ${DB:=TechnologyConversations}
: ${TIME:=$(date +%F)}

FILE_NAME=${DB}-${TIME}

cd /dump
mongodump -host "${HOST}" -db "${DB}" -out "./${FILE_NAME}"
tar czf "./${FILE_NAME}.tar.gz" "./${FILE_NAME}"
rm -rf  "./${FILE_NAME}"