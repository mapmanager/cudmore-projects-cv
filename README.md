# MapManager

Project portfolio for [mapmanager.net](https://mapmanager.net/).


## To shrink png files

### pngquant — biggest size drop (lossy)

Reduces 24-bit PNG to an optimized 256-color palette

```
pngquant --quality 65-80 --speed 1 --ext .png --force docs/assets/*.png
```

### oxipng — best lossless follow-up

Recompresses without changing pixels

```
oxipng -o 4 --strip safe docs/assets/*.png
```

-o 4 is a good quality/speed tradeoff. --strip safe drops unused metadata.