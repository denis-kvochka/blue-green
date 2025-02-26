# Blue-Green Minimalist Web Server

Thanks to [kirbah/blue-green](https://github.com/kirbah/blue-green)

The web server runs on port 8080 and serves a simple HTML page with the chosen color as the background and shows values of COLOR and COMMENT variables as well.

## Usage

#### Build and Run

```bash
## blue
docker build --build-arg COLOR=blue -t blue-green:blue .
docker run -d --rm --name color-blue -p 80:8080 blue-green:blue

## green
docker build --build-arg COLOR=green -t blue-green:green .
docker run -d --rm --name color-green -p 81:8080 blue-green:green

## no color is white
docker build -t color:no .
docker run -d --rm --name color-no -p 82:8080 color:no

## or any other html color name
## set comment as well
docker build --build-arg COLOR=DarkKhaki --build-arg COMMENT=v0.0.x -t color:DarkKhaki .
docker run -d --rm --name color-DarkKhaki -p 83:8080 color:DarkKhaki
```

#### View logs

```bash
docker logs color-blue
```

## To Do

Переделать образ, чтобы можно было изменять цвет и комментарий не через сборку образа, а через аргументы командной строки при запуске образа.
