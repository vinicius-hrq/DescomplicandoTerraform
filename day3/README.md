# Dependências
Em grande maioria, o Terraform infere dependências entre recursos com base na configuração forneceida, para que os recursos sejam criados e destruídos na ordem correta. Eventualmente, o Terraform não pode inferir dependências entre diferentes partes da infraestrutura, nesse caso, será necessário criar uma dependência explícita com o `depends_on`.

O recurso `aws_eip` loca e associa um IP elástico a uma instância EC2. A instância deve existir antes que o IP possa ser criado e anexado, O terraform deve garantir que `aws_instance.web` seja criado antes de `aws_eip.ip`. Sendo esta, uma dependência implícita.

O argumento `depends_on` é aceito por qualquer recurso ou bloco de módulo e aceita uma lista de recursos para os quais criar dependências explícitas. O terraform espera até  que `aws_instance.web` seja criado para começar a criar os recursos `aws_eip.ip` e `aws_instance.web2`