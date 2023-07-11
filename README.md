# celestia-helm-charts

Helm charts for deploying Celestia Applications on Kubernetes


### Get the Helm Repository Added

``` 
helm repo add celestia https://celestiaorg.github.io/celestia-helm-charts/
```

### Usage

```shell
helm search repo celestia
```

if you want to see dev or release candidate charts
```shell
helm search repo celestia --devel --version 0.11.0-dev.2
# or
helm search repo celestia --devel --version 0.11.0-rc.7
```


### Installation
Please create an appropriate namespace in your cluster before installing the chart.
Example for creating a namespace to deploy DA Nodes on arabica testnet:
```shell
kubectl create namespace celestia-arabica-9
```

For using pre-release/dev versions use the flag `--version`
Example for running a light-node with arabica testnet: 
```shell
helm install light-node celestia/node -f examples/light.yaml --version 0.11.0-dev.2
```

