APP_ID=${1:-APP_ID}
CLIENT_ID=${2:-mictlanx-sharing-0}
SECRET=${3:-t0p53cr3T#}
AUTHORIZATION=${4:-TOKEN}

http GET http://localhost:16000/api/v3/QR\?data\=https://muyal.tamps.cinvestav.mx \
Application-Id:"$APP_ID" \
Client-Id:"$CLIENT_ID" \
Secret:"$SECRET" \
Authorization:"$AUTHORIZATION"
