# 1 - Módulos
- Módulos são a principal forma de empacotar e reutilizar configurações de recursos com o Terraform.
[Documentação Oficial](https://www.terraform.io/docs/language/modules/index.html)

# 2 - Backend e State Locking

- State Locking: o Terraform bloqueará seu estado para todas as operações que possam gravar o estado. Isso evita que outras pessoas obtenham o bloqueio e, potencialmente, corrompendo seu estado. [State Locking](https://www.terraform.io/docs/language/state/locking.html)

- Armazena o estado como uma determinada chave em um determinado intervalo no Amazon S3. [S3 - Backend](https://www.terraform.io/docs/language/settings/backends/s3.html)

