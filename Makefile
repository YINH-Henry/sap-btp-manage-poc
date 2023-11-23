getNamespace:
	-kubectl get namespaces -n cdf-dev

getServiceInstance:
	-kubectl get serviceinstances -n cdf-dev

getServiceBindings:
	-kubectl get servicebindings -n cdf-dev

createXsuaaInstance:
	-kubectl apply -f xsuaa.yaml

createXsuaaInstanceBinding:
	-kubectl apply -f xsuaaBinding.yaml

DeleteXsuaaInstanceBinding:
	-kubectl delete servicebinding cdf-xsuaa-binding -n cdf-dev

DeleteXsuaaInstance:
	-kubectl delete serviceinstances cdf-xsuaa -n cdf-dev

createKafkaInstance:
	-kubectl apply -f btp-kafka.yaml

DeleteKafkaInstance:
	-kubectl delete serviceinstances cdf-kafka-poc -n cdf-dev

getIPaddress:
	-kubectl run -i --tty busybox --image=yauritux/busybox-curl --restart=Never
     #curl ifconfig.me/all

createKafkaInstanceBinding:
	-kubectl apply -f btp-kafka-binding.yaml

DeleteKafkaInstanceBinding:
	-kubectl delete servicebinding cdf-kafka-access -n cdf-dev