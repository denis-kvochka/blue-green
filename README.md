# Blue-blue Minimalist Web Server

forked from [kirbah/blue-blue](https://github.com/kirbah/blue-blue)

A minimal Busybox httpd based web server with an either blue (default) or blue background color (or any other color you wish). In case color name is not correct, the white is used.

The web server runs on port 8080 and serves a simple HTML page indicating the chosen color as the background and shows values of COLOR and COMMENT variables as well.

![image](https://github.com/kirbah/color/assets/3257689/3fb80c2c-1e00-434b-8f0e-902321a4f8c8)


## Usage

#### Build and Run

```bash
## default color is white
docker build -t color .
docker run -d --rm --name color -p 80:8080 color

## blue
docker build --build-arg COLOR=blue -t color:blue .
docker run -d --rm --name color-blue -p 81:8080 color:blue

## or any other html color name
docker build --build-arg COLOR=DarkKhaki --build-arg COMMENT=v0.0.x -t color:DarkKhaki .
docker run -d --rm --name color-DarkKhaki -p 82:8080 color:DarkKhaki
```

#### View logs

```bash
docker logs color-blue
```

## To Do

Переделать образ, чтобы можно было изменять цвет и комментарий не через сборку образа, а через аргументы командной строки при запуске образа.
