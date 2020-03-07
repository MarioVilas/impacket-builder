.PHONY: all clean

.NOTPARALLEL:

all: dist/linux-x64 dist/windows-x86 dist/windows-x64

dist/linux-x64:
	docker-compose up --build impacket-builder-linux-x64
	mkdir -p ./dist/linux-x64 && docker cp impacket-builder-linux-x64:/root/impacket/examples/dist/* ./dist/linux-x64/

dist/windows-x86:
	docker-compose up --build impacket-builder-wine-x86
	mkdir -p ./dist/windows-x86 && docker cp impacket-builder-wine-x86:/root/impacket/examples/dist/* ./dist/windows-x86/

dist/windows-x64:
	docker-compose up --build impacket-builder-wine-x64
	mkdir -p ./dist/windows-x64 && docker cp impacket-builder-wine-x64:/root/impacket/examples/dist/* ./dist/windows-x64/

clean:
	rm -fr -- dist/
