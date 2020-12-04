# Install into a separate namespace because Istio messing things up apparently
kubectl create namespace waypoint
waypoint install -accept-tos -namespace waypoint
