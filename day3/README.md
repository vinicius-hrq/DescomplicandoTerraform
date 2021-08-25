# 1 - Dependências
Em grande maioria, o Terraform infere dependências entre recursos com base na configuração forneceida, para que os recursos sejam criados e destruídos na ordem correta. Eventualmente, o Terraform não pode inferir dependências entre diferentes partes da infraestrutura, nesse caso, será necessário criar uma dependência explícita com o `depends_on`.

O recurso `aws_eip` loca e associa um IP elástico a uma instância EC2. A instância deve existir antes que o IP possa ser criado e anexado, O terraform deve garantir que `aws_instance.web` seja criado antes de `aws_eip.ip`. Sendo esta, uma dependência implícita.

O argumento `depends_on` é aceito por qualquer recurso ou bloco de módulo e aceita uma lista de recursos para os quais criar dependências explícitas. O terraform espera até  que `aws_instance.web` seja criado para começar a criar os recursos `aws_eip.ip` e `aws_instance.web2`

![Apply.](images/terraform_apply.png "Apply.")

# 2 - state list
Listará todos os recursos e módulos no arquivo de estado:

![terraform state list.](images/terraform_state_list.png "terraform state list.")

[Command: state list](https://www.terraform.io/docs/cli/commands/state/list.html)

# 3 - taint / untaint
Informa ao Terraform que um determintado objeto está degradado ou danificado. O comando `terraform taint` marca o objeto como `tainted` no arquivo de estado.

Caso o objeto tenha sido marcado como `tainted` erroneamente, o comando `terraform untaint` pode ser usado para remover a marcação desse objeto.

![terraform taint / untaint.](images/terraform_taint_untaint.png "terraform taint / untaint.")

[Command: taint](https://www.terraform.io/docs/cli/commands/taint.html)

[Command: untaint](https://www.terraform.io/docs/cli/commands/untaint.html)

# 4 - Graph
Gera uma representação visual de uma configuração / plano de execução. A saída está no formato DOT, que pode ser usado pelo [GraphViz](http://www.graphviz.org/) para gerar gráficos.

![terrafom graph.](images/terraform_graph.png "terraform graph.")

A saída do `terraform graph` está no formato DOT, que pode ser convertido em uma imagem usando o `dot` fornecido pelo GraphViz:

```$ terraform graph | dot -Tsvg > graph.svg```

![graph.svg.](images/graph.svg "graph.svg.")

[Command: graph](https://www.terraform.io/docs/cli/commands/graph.html)

# 5 - fmt
O `terraform fmt` é usado para reescrever os arquivos de configuração do Terraform, esse comando aplica as [Style Conventions](https://www.terraform.io/docs/language/syntax/style.html)

![terraform_fmt.](images/terraform_fmt.png "terraform_fmt.")

[Command: fmt](https://www.terraform.io/docs/cli/commands/fmt.html)

# 6 - validate
Valida os arquivos de configuração em um diretório, não acessando quaisquer serviços remotos como o state remoto e API's de Cloud Provider. Verifica se uma configuração é sintaticamente válida e internamente consistente, independente de variáveis fornecidas ou estado existente.

![terraform_validate.](images/terraform_validate.png "terraform_validate.")

[Command: validate](https://www.terraform.io/docs/cli/commands/validate.html)