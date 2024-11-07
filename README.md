# desafio-clean-arch
Desafio "Clean Arch" do curso Go Expert, da Full Cycle


# Como executar o código?
Após baixar o repositório, será necessario subir o container do docker com o comando  `docker-compose up`, dessa forma o banco de dados e a tabela será criada.

Para executar o servidor basta acessar a pasta server em um terminal (~/desafio-clean-arch/cmd/ordersystem) e executar o comando:

`go run main.go wire_gen.go`

Nesse projeto estamos utilizando o [wire](https://github.com/google/wire) para injeção de dependencias.

Essas são as respectivas portas dos serviços:
Servidor REST http://localhost:8000/.
Servidor gRPC http://localhost:50051/.
Servidor GraphQL http://localhost:8080/.

Nesse projeto é possivel realizar as seguintes operações:
- Criar uma ordem
- Buscar todas as ordens

### Para fazer as requisições para o servidor REST:

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

###  Para fazer as requisições para o servidor gRPC:
É possivel interagir com o serviço via CLI, para isso será necessario baixar o [evans](https://github.com/ktr0731/evans?tab=readme-ov-file) e executar o comando:

`evans -r repl`

Após isso será possivel interagir com o serviço via CLI.

### Para fazer as requisições para o servidor GraphQL:
Será necessario instalar o [Gqlgen](https://gqlgen.com/) e acessar a url http://localhost:8080 e executar as queries.

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

