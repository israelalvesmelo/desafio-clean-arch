FROM golang:latest as builder
WORKDIR /app
COPY . .
RUN GOOS=linux CGO_ENABLED=0 go build -ldflags="-w -s" -o server ./cmd/ordersystem


FROM scratch
COPY --from=builder /app/cmd/ordersystem/.env .
COPY --from=builder /app/server .
COPY --from=builder /app/init-db ./init-db

CMD ["./server"]