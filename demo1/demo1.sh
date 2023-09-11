readonly NODE_ID=${1:-mictlanx-sharing-0}
readonly NODE_PORT=${3:-16000}

docker run \
--name "$NODE_ID" \
-p "$NODE_PORT":16000 \
-d \
-e NODE_ID="$NODE_ID" \
-e IP_ADDRESS="localhost" \
-e NODE_PORT="$NODE_PORT" \
-e SERVER_IP_ADDR="0.0.0.0" \
-e BASE_PATH="/mictlanx" \
-e LOCAL_PATH="/mictlanx/local" \
-e DATA_PATH="/mictlanx/data" \
-e LOG_PATH="/mictlanx/log" \
-e API_VERSION="3" \
-e APPLICATION_ID="APP_ID" \
-e CLIENT_ID="$NODE_ID" \
-e SECRET="SECRET" \
-e XOLO_IP_ADDR="localhost" \
-e XOLO_PORT="10000" \
-e XOLO_MODE="off" \
-v /mictlanx/"$NODE_ID"/local:/mictlanx/local \
-v /mictlanx/"$NODE_ID"/data:/mictlanx/data \
-v /mictlanx/"$NODE_ID"/log:/mictlanx/log \
--network=mictlanx \
nachocode/demo1
