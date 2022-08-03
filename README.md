# kit-api

## 构建
### 准备
    
### protoc3+安装
    // 选择要安装的版本并下载（protobuf-all-3.*为全部语种）
    https://github.com/protocolbuffers/protobuf/releases
    // 解压&进入目录解压后目录，开始安装
    tar zxvf protobuf-all-3.14.0.tar.gz
    // 编译安装(sudo权限)
    ./configure
    make
    make check
    make install
    // 检查安装是否成功
    protoc --version
### truss使用
    cd $GOPATH/src/kit-api
    // 注意
    // truss依赖go mod，需要先执行 go mod init 生成默认mod文件，否则可能truss执行会报错
    // 但不要把go.mod文件上传，否则引用的service mod会报错
    // 构建基础服务（依赖protoc）
    truss demo/demo.proto -v --svcout ../kit-service --assignpb github.com/harkli/kit-api --assignsn kit-service