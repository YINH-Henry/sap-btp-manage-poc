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