# 1 - Terraform Workspaces
1. Documentação: [Workspaces](https://www.terraform.io/docs/language/state/workspaces.html)

- Para criar um novo espaço de trabalho e alternar para ele, você pode usar `terraform workspace new $NOME`. 
- Para alternar espaços de trabalho que você pode usar `terraform workspace select $NOME`.

2. Criando Workspace

```
terraform workspace new production
terraform workspace new staging
```
3. Selecionando Workspace

```
terraform workspace select production
```

4. Executando plan e apply para Workspace Production que irá provisionar a instância ec2 em us-east-1.

```
terraform plan -out plano 
terraform apply "plano"
```