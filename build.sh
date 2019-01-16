#!/usr/bin/env bash

base_dir="/usr/local"
out="${base_dir}/bin"

mkdir -p "${out}"

echo "build file to ${out}"

go get -u github.com/shunfei/cronsun
go mod vendor

cp -v ./bin/cronconf "${out}"
go build -o "${out}/cronnode"   ./bin/node/server.go
go build -o "${out}/cronweb"    ./bin/web/server.go
go build -o "${out}/csctl"      ./bin/csctl/cmd.go

chmod +x "${out}/cronnode"
chmod +x "${out}/cronweb"
chmod +x "${out}/cronconf"
#check all out put bin

cp -rfv share "${base_dir}"
rm -rfv "${GOPATH}"

echo "build success."
