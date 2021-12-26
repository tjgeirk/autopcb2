#/bin/bash
#
set +x
git pull
cat config > "$(pwd)"/scripts/update.sh
cat "$(pwd)"/scripts/body >> "$(pwd)"/scripts/update.sh
bash "$(pwd)"/scripts/update.sh
while kill -0 $! 2> /dev/null; do
    echo -ne " / Running                        \r" && sleep .1 
    echo -ne " | rUnning                        \r" && sleep .1 
    echo -ne " \\ ruNning                       \r" && sleep .1
    echo -ne " – runNing                        \r" && sleep .1 
    echo -ne " / runnIng                        \r" && sleep .1 
    echo -ne " | runniNg                        \r" && sleep .1 
    echo -ne " \\ runninG                       \r" && sleep .1
    echo -ne " – running.                       \r" && sleep .1
    echo -ne " / running..                      \r" && sleep .1
    echo -ne " | running...                     \r" && sleep .1
    echo -ne " \\ running ...                   \r" && sleep .1
    echo -ne " – running   ..                   \r" && sleep .1
    echo -ne " / running    .                   \r" && sleep .1
    echo -ne " | running   ..                   \r" && sleep .1
    echo -ne " \\ running ...                   \r" && sleep .1 
    echo -ne " – running...                     \r" && sleep .1
    echo -ne " / runninG..                      \r" && sleep .1
    echo -ne " | runniNg.                       \r" && sleep .1
    echo -ne " \\ runnIng                       \r" && sleep .1
    echo -ne " – runNing                        \r" && sleep .1
    echo -ne " / ruNning                        \r" && sleep .1
    echo -ne " | rUnning                        \r" && sleep .1
    echo -ne " \\ Running                       \r" && sleep .1
    echo -ne " - running                        \r" && sleep .1
done
systemctl daemon-reload
journalctl -f
