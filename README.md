# Noirtier
Display text in the 20 kHz ultrasound spectrum

## Usage

```console
docker run --rm ghcr.io/montlhery/noirtier message > output.mp3
```

<img src="https://user-images.githubusercontent.com/11387611/162350259-6c730201-0d73-4c88-a14e-bc4431cbd8ad.png" alt="spectrum" height="480">

## Hardware

Use a 35 mm [piezoelectric speaker](https://en.wikipedia.org/wiki/Piezoelectric_speaker), a [microSD card](https://en.wikipedia.org/wiki/SD_card) and a [DFPlayer Mini](https://wiki.dfrobot.com/DFPlayer_Mini_SKU_DFR0299) with `IO_1` connected to `GND` to automatically play the generated MP3 file in an endless loop. Power consumption is around 36 mA at 5 V.

![schematic](https://user-images.githubusercontent.com/11387611/162355495-59f59b27-0d57-4de5-b7c2-2ea3e20c923f.svg)
