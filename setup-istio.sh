/Users/david.atkinsef.com/istio-1.8.0/bin/istioctl install --set profile=demo -y

sleep 20

kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.8/samples/addons/prometheus.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.8/samples/addons/kiali.yaml
kubectl label namespace default istio-injection=enabled
