# Noirtier
Display text in the 20 kHz ultrasound spectrum

## Usage

```console
docker run --rm ghcr.io/montlhery/noirtier message > output.mp3
```

<img src="https://user-images.githubusercontent.com/11387611/162350259-6c730201-0d73-4c88-a14e-bc4431cbd8ad.png" alt="spectrum" height="480">

## Hardware

Use a couple of 35 mm [piezoelectric speaker](https://en.wikipedia.org/wiki/Piezoelectric_speaker), a [microSD card](https://en.wikipedia.org/wiki/SD_card) and a [DFPlayer Mini](https://wiki.dfrobot.com/DFPlayer_Mini_SKU_DFR0299) with `IO_1` connected to `GND` to automatically play the generated MP3 file in an endless loop.

![schematic](https://user-images.githubusercontent.com/11387611/162355495-59f59b27-0d57-4de5-b7c2-2ea3e20c923f.svg)

Power consumption is approximately 40 mA at 5 V.

### Enclosure

The device can be enclosed in a 3D-printed case with the following shape:

```openscad
difference() {
  cylinder(h=7, r=35/2);
  cylinder(h=7, r=35/2-1);
  translate([0, -2.54, 0]) cube([35/2, 2.54*2, 2.54]);
}
```
