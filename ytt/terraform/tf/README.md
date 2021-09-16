```
terraform output -json > tf.json
ytt --data-values-file tf.json
```

```
cat tf.json | jq '. as $in | reduce keys_unsorted[] as $k ({}; . + {($k): $in[$k].value} )'
```
