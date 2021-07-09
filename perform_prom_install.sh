kubectl apply -f tkg-extensions-v1.3.1+vmware.1/extensions/monitoring/prometheus/namespace-role.yaml
kubectl create secret generic prometheus-data-values --from-file=values.yaml=tkg-extensions-v1.3.1+vmware.1/extensions/monitoring/prometheus/prometheus-data-values.yaml -n tanzu-system-monitoring
kubectl create secret generic prometheus-data-values --from-file=values.yaml=tkg-extensions-v1.3.1+vmware.1/extensions/monitoring/prometheus/prometheus-data-values.yaml -n tanzu-system-monitoring -o yaml --dry-run=client | kubectl replace -f -
kubectl apply -f tkg-extensions-v1.3.1+vmware.1/extensions/monitoring/prometheus/prometheus-extension.yaml
