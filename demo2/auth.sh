#!/bin/bash
display_name=${1:-test}
scope_id=${2:-scope_id}
http POST http://localhost:10000/api/v3/auth  < ./payloads/auth.json
