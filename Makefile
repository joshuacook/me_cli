app:
	docker build -t mecli .
	docker run -p 3334:80 --rm mecli
