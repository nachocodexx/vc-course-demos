#!/bin/bash
display_name=${1:-test}
scope_id=${2:-scope_id}
http POST http://localhost:10000/api/v3/applications \
Secret:te0imDRjzcA2lnRfwWzxu47NyVFq7xU/XWK/l7bPHPo= \
Scope-Id:"$scope_id" \
display_name:='"'"$display_name"'"'
