echo "
Starting pod with NginX"
kubectl run my-nginx --image=kamranazeem/centos-multitool --replicas=2 --port=80

echo "
Starting service to expose NginX service as NodePort"
kubectl expose deployment my-nginx --port=80 --type=NodePort
