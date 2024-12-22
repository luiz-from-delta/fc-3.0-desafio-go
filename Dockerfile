FROM golang:alpine AS builder

WORKDIR /go

COPY . .

RUN apk add --no-cache upx

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o app . && \
  upx --best --lzma app

FROM scratch AS runner

COPY --from=builder /go/app .

ENTRYPOINT [ "./app" ]