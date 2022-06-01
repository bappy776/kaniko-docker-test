#!/bin/bash
if [ $MIGRATE_PROCESS_TIME -ne 0 ]
then
    echo "I am running migrate_db process for $MIGRATE_PROCESS_TIME seconds"
    /usr/local/bin/migrate_db
fi

echo "I am running in infinite loop"
while true; do
    echo "Press [CTRL+C] to stop.."
    sleep 1
done