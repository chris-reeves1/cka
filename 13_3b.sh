helm repo add kubernetes-dashboard 
https://kubernetes.github.io/dashboard
helm install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard \
    --set protocolHttp=true \
    --set service.type=NodePort \
    --set metricsScraper.enabled=true
kubectl create clusterrolebinding dashaccess \
    --clusterrole cluster-admin \
    --serviceaccount default:kubernetes-dashboard