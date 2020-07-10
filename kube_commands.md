# Go to vim ~/.kube/config file created executing kops command
# show API section under server:
# k8 cluster hosted zone 
# cluster mostly talk with pods with api and dns name

# kubectl commands

# kubectl get nodes

# do not BREAK the Cert

# In AWS console after running Terraform course

# instnances 3 servers where k8 is installed the hardware part of the cluster

# The software created on the nodes are the actual k8 cluster

# show vols, sg one for node and one for master. 

# ngnix deployment with docker in k8

kubectl \
        create deployment my-nginx-deployment \
        --image=nginx


# deploy service

kubectl \
        expose deployment my-nginx-deployment \
        --port=80 \
        --type=NodePort \
        --name=my-nginx-service


