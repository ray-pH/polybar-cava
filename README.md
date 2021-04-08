Simple [CAVA](https://github.com/karlstav/cava) (music visualization) module for [polybar](https://github.com/polybar/polybar).

Screenshot
![screenshot](./img/screenshot.png)
Aimated GIF
![animated](./img/animated.gif)

Dependencies:
- CAVA
- polybar

On your polybar config, add these line
```
[module/cava]
type = custom/script
tail = true
exec = $HOME/.config/polybar/cava.sh
format = <label>
format-font = 5
label = %output%
```

change `exec` value to where you put `cava.sh`.
`tail = true` is very important.

You can change the number of bar by modifying `cava_raw_config`.
```
[general]
bars = 10
```
