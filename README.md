Simple [CAVA](https://github.com/karlstav/cava) (music visualization) module for [polybar](https://github.com/polybar/polybar).

<details>
    <summary>Screenshot</summary>
    ![screenshot](./img/screenshot.png)
</details>

<details>
    <summary>Aimated GIF</summary>
    ![animated](./img/animated.gif)
</details>

Dependencies:
- CAVA
- polybar

On your polybar config, add these line
```ini
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
