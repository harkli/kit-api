File = $(f)

all:
	truss $(f) -v --svcout ../kit-service --assignpb github.com/harkli/kit-api --assignsn kit-service
