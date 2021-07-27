for chart in aws-hub genesis-dev growth-hub sssc-hub; do
    helm2 dependency update $chart
    res=$(helm package $chart)
    path=$(echo $res | awk '{split($0, a, " "); print a[length(a)]}')
    mv $path docs/$(basename $path)
done

cd docs
helm2 repo index .
cp index.yaml _data/index.yaml
