# desafio-clean-arch
Desafio "Clean Arch" do curso Go Expert, da Full Cycle


# Como executar o código?
Após clonar o repositório, será necessário subir o container do docker. Dessa forma, todas as imagens necessárias serão baixadas, o banco de dados configurado e a aplicação será iniciada. Execute o comando:

```bash
docker-compose up --build
```

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
É possível interagir com o [evans](https://github.com/ktr0731/evans?tab=readme-ov-file) e executar os comandos:

```bash
evans -r repl
```

```bash
package pb
```

```bash
service OrderService
```

```bash
call CreateOrder
```
```bash
call ListOrders
```


### Para fazer as requisições ao servidor GraphQL:
Acessar a url http://localhost:8080 no navegador e executar as queries.

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

