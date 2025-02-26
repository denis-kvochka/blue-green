# Blue-Green Minimalist Web Server

forked from [kirbah/blue-green](https://github.com/kirbah/blue-green)

A minimal Busybox httpd based web server with an either blue or green background color (or any other color you wish). In case color name is not correct, the white is used.

The web server runs on port 8080 and serves a simple HTML page indicating the chosen color as the background and shows values of COLOR and COMMENT variables as well.

![image](https://github.com/kirbah/color/assets/3257689/3fb80c2c-1e00-434b-8f0e-902321a4f8c8)


## Usage

#### Build and Run

```bash
## blue
docker build --build-arg COLOR=blue -t blue-green:blue .
docker run -d --rm --name color-blue -p 81:8080 blue-green:blue

## green
docker build --build-arg COLOR=green -t blue-green:green .
docker run -d --rm --name color-green -p 81:8080 blue-green:green

## default color is white
docker build -t color:white .
docker run -d --rm --name color-white -p 80:8080 color:white

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
