# Encrypt 
A utilização do backend remoto com S3 possibilita a criptografia do lado do servidor do arquivo state.
Para isso, na configuração do backend no arquivo main.tf é necessário adicionar o `encrypt = true`.

[Backsend s3 - Encrypt](https://www.terraform.io/docs/language/settings/backends/s3.html#encrypt)

[Proteção de dados usando criptografia no lado do servidor com chaves de criptografia gerenciadas pelo Amazon S3 (SSE-S3)](https://docs.aws.amazon.com/pt_br/AmazonS3/latest/userguide/UsingServerSideEncryption.html)