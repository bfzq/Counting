S_OBJ=$(wildcard server/*.cc)
C_OBJ=$(wildcard client/*.cc)
all:counting_server counting_client
counting_server: $(S_OBJ)
	g++ --std=c++2a -o $@ -I include $?
	mv counting_server bld/
counting_client: $(C_OBJ)
	g++ --std=c++2a -o $@ -I include $?
	mv counting_client bld/
.PHONY: clean
clean:
	rm -rf bld/*
