kubectl apply -f tkg-extensions-v1.3.1+vmware.1/cert-manager/
kubectl create rolebinding sa-admin --clusterrole=admin --serviceaccount=tkg-system:kapp-controller-sa -n tkg-system
kubectl create clusterrolebinding sa-admin --clusterrole=cluster-admin --serviceaccount=tkg-system:kapp-controller-sa -n tkg-system
kubectl apply -f tkg-extensions-v1.3.1+vmware.1/extensions/ingress/contour/namespace-role.yaml
kubectl create secret generic contour-data-values --from-file=values.yaml=tkg-extensions-v1.3.1+vmware.1/extensions/ingress/contour/vsphere/contour-data-values.yaml -n tanzu-system-ingress
kubectl apply -f tkg-extensions-v1.3.1+vmware.1/extensions/ingress/contour/contour-extension.yaml



