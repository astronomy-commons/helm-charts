# Astronomy Data Commons

Add this repository with
```
helm repo add astronomy-data-commons https://astronomy-commons.github.io/helm-charts/
helm repo update
```

{% assign entries = site.data.releases %}

{% assign genesis_releases = entries['genesis'] %}
{% if genesis_releases.size > 0 %}
## Genesis Helm Chart

<table>
    <tr>
        <th>release</th>
    </tr>
    {% for version in genesis_releases %}
    <tr>
        <td><a href="{{ version | relative_url }}">{{ version }}</a></td>
    </tr>
    {% endfor %}
</table>
{% endif %}


{% assign aws_hub_releases = entries['aws-hub'] %}
{% if aws_hub_releases.size > 0 %}
## AWS Helm Chart

<table>
    <tr>
        <th>release</th>
    </tr>
    {% for version in aws_hub_releases %}
    <tr>
        <td><a href="{{ version | relative_url }}">{{ version }}</a></td>
    </tr>
    {% endfor %}
</table>
{% endif %}