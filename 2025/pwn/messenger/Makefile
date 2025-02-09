.PHONY: all
all: bzImage

IMG = messenger-kernel-image
CON = messenger-kernel-container

bzImage: kconfig kernel.dockerfile msgutil.patch
	-@docker rm $(CON) 2>/dev/null || true
	docker build -t $(IMG) -f kernel.dockerfile .
	docker run --name $(CON) $(IMG) /bin/true
	docker cp $(CON):/bzImage .
	-@docker rm $(CON) 2>/dev/null || true
