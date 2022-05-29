#! /bin/bash
mkdir /tmp/log
phpcs .  > /tmp/log/analyze.log
ls -alrt /tmp/log
exit 0
