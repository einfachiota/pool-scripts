#!/bin/sh
url='https://meine.IOTA-Node.de'
name='Meine IOTA Node'
pow='true'
key=''

### DO NOT EDIT BELOW ###
if [ "x$key" = "x" ]; then
	curl -X POST "https://nutzdoch.einfachiota.de/nodes" -H  "accept: */*" -H  "Content-Type: application/json" -d "{  \"name\": \"$name\",  \"url\": \"$url\",  \"pow\": \"$pow\"  }" |jq
else
	curl -X POST "https://nutzdoch.einfachiota.de/nodes" -H  "accept: */*" -H  "Content-Type: application/json" -d "{  \"name\": \"$name\",  \"url\": \"$url\",  \"pow\": \"$pow\",  \"password\": \"$key\"  }" |jq
fi
exit 0

