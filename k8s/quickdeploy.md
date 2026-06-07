1. create namespace:
```bash
kubectl create namespace data-science
```
2. create secret
```bash
    kubectl exec -it -n vault vault-0 -- sh
    vault login
    vault kv put secret/rstudio password="Password#123"
```
3. Apply external secret:
```bash
    kubectl apply -f k8s/externalsecret.yaml
```
4. deploy the application:
```bash
    kubectl apply -f argocd-rstudio.yaml
```
