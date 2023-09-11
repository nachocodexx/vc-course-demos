#!/bin/bash
display_name=${1:-test}
http POST http://localhost:10000/api/v3/scopes \
Secret:te0imDRjzcA2lnRfwWzxu47NyVFq7xU/XWK/l7bPHPo= \
display_name:='"'"$display_name"'"'
