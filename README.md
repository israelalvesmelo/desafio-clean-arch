# desafio-clean-arch
Desafio "Clean Arch" do curso Go Expert, da Full Cycle


# Como executar o código?
Após baixar o repositório, será necessário subir o container do docker com o comando  `docker-compose up`. Dessa forma, o banco de dados e a tabela serão criados.

Para executar o servidor, basta acessar a pasta ordersystem em um terminal (~/desafio-clean-arch/cmd/ordersystem) e executar o comando:

`go run main.go wire_gen.go`

Nesse projeto estamos utilizando o [wire](https://github.com/google/wire) para injeção de dependencias.

As portas dos serviços são as seguintes:
- Servidor REST http://localhost:8000/.
- Servidor gRPC http://localhost:50051/.
- Servidor GraphQL http://localhost:8080/.

Nesse projeto, é possível realizar as seguintes operações:
- Criar uma ordem
- Buscar todas as ordens

### Para fazer as requisições ao servidor REST:

```bash
curl --location --request GET 'http://localhost:8000/order' \
--header 'Content-Type: application/json' \
--data '{
    "id": "test1",
    "price": 100.5,
    "tax": 0.5
}'
```
```bash
curl --location 'http://localhost:8000/orders'
```

###  Para fazer as requisições ao servidor gRPC:
É possível interagir com o serviço via CLI. Para isso, será necessário baixar o [evans](https://github.com/ktr0731/evans?tab=readme-ov-file) e executar o comando:

`evans -r repl`

Após isso, será possível interagir com o serviço via CLI.

### Para fazer as requisições ao servidor GraphQL:
Será necessário instalar o [Gqlgen](https://gqlgen.com/) e acessar a url http://localhost:8080 e executar as queries.

```bash
mutation createOrder {
  createOrder(input:{id: "uu22u", Price: 12.2, Tax: 2}) {
    id
    Price
    Tax
    FinalPrice
  }
}
```
```bash
query orders {
  orders{
    id 
    Price
    Tax
    FinalPrice
  }
}
```

## Author

- [@israelalvesmelo](https://github.com/israelalvesmelo)

