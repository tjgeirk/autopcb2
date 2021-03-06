#/bin/bash
#
set +x
cat $(pwd)/config > $(pwd)/scripts/autopcb.sh
if [ -f $(pwd)/.apcb_installed ]
    then
        echo "install detected, skipping reinstallation"
    else
        cat $(pwd)/scripts/install >> $(pwd)/scripts/autopcb.sh
fi
cat $(pwd)/scripts/body >> $(pwd)/scripts/autopcb.sh
bash $(pwd)/scripts/autopcb.sh &
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
