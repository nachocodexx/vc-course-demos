APP_ID=${1:-APP_ID}
CLIENT_ID=${2:-mictlanx-sharing-0}
SECRET=${3:-t0p53cr3T#}

docker run \
--name "mictlanx-sharing-0" \
-p 16000:16000 \
-d \
-e NODE_ID="mictlanx-sharing-0" \
-e IP_ADDRESS="localhost" \
-e NODE_PORT="16000" \
-e SERVER_IP_ADDR="0.0.0.0" \
-e BASE_PATH="/mictlanx" \
-e LOCAL_PATH="/mictlanx/local" \
-e DATA_PATH="/mictlanx/data" \
-e LOG_PATH="/mictlanx/log" \
-e API_VERSION="3" \
-e APPLICATION_ID="$APP_ID" \
-e CLIENT_ID="$CLIENT_ID" \
-e SECRET="$SECRET" \
-e XOLO_IP_ADDR="mictlanx-xolo-0" \
-e XOLO_PORT="10000" \
-e XOLO_MODE="default" \
-v /mictlanx/mictlanx-sharing-0/local:/mictlanx/local \
-v /mictlanx/mictlanx-sharing-0/data:/mictlanx/data \
-v /mictlanx/mictlanx-sharing-0/log:/mictlanx/log \
--network=mictlanx \
nachocode/mictlanx:sharing_demo2


docker run \
--name mictlanx-xolo-0 \
-p 10000:10000 \
-d \
-e NODE_ID="mictlanx-xolo-0" \
-e IP_ADDRESS="localhost" \
-e NODE_PORT="10000" \
-e SERVER_IP_ADDR="0.0.0.0" \
-e BASE_PATH="/mictlanx" \
-e LOCAL_PATH="/mictlanx/local" \
-e DATA_PATH="/mictlanx/data" \
-e LOG_PATH="/mictlanx/log" \
-e API_VERSION="3" \
-e XOLO_SECRET="te0imDRjzcA2lnRfwWzxu47NyVFq7xU/XWK/l7bPHPo=" \
-v /mictlanx/mictlanx-xolo-0/local:/mictlanx/local \
-v /mictlanx/mictlanx-xolo-0/data:/mictlanx/data \
-v /mictlanx/mictlanx-xolo-0/log:/mictlanx/log \
--network=mictlanx \
nachocode/mictlanx:xolo_demo2
