# 1 Expressões - Operadores aritméticos e lógicos

Um operador é um tipo de expressão que transforma ou combina uma ou mais outras expressões. Os operadores combinam dois valores de alguma forma para produzir um terceiro valor de resultado ou transformam um único valor fornecido para produzir um único resultado.

[Expressions - Operators](https://www.terraform.io/docs/language/expressions/operators.html)

1. Cenário

No arquivo `variable.tf` está contida a [variable](https://www.terraform.io/docs/language/values/variables.html) *environment* que por padrão é *production*. Em `ec2.tf` no argumento count, há um operador de igualdade que irá verificar se *var.environment* é igual a *production*, caso positivo, irá criar 2 instancias e caso negativo criará apenas 1. Ao executar o `terraform plan` é possível observar o resultado.

![a.](images/terraform_plan_simple_operator.png)