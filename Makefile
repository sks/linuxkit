.DEFAULT_GOAL=start

build:
	linuxkit build -disable-content-trust iot.yml

clean:
	rm -rf iot-*

start: build run

run:
	sudo linuxkit run hyperkit \
		-cpus 1 \
		-mem "1048" \
		-disk size=10G \
		-networking vmnet iot
	