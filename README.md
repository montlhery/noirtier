# Noirtier
Display text in the 20 kHz ultrasound spectrum

## Usage

```console
docker run --rm ghcr.io/montlhery/noirtier message > output.mp3
```

<img src="https://user-images.githubusercontent.com/11387611/162350259-6c730201-0d73-4c88-a14e-bc4431cbd8ad.png" alt="spectrum" height="480">

## Hardware

Use a 35 mm [piezoelectric speaker](https://en.wikipedia.org/wiki/Piezoelectric_speaker), a [microSD card](https://en.wikipedia.org/wiki/SD_card) and a [DFPlayer Mini](https://wiki.dfrobot.com/DFPlayer_Mini_SKU_DFR0299) with `IO_1` connected to `GND` to automatically play the generated MP3 file in an endless loop.

![schematic](https://user-images.githubusercontent.com/11387611/162355495-59f59b27-0d57-4de5-b7c2-2ea3e20c923f.svg)

Power consumption is approximately 40 mA at 5 V.

### Enclosure

1. Desolder the microSD connector from the DFPlayer Mini and solder the microSD card directly to the circuit board.
2. Enclose the DFPlayer Mini between two piezoelectric speakers with the silver parts pointing inwards.
2. Solder all the connections, and terminate the power cables with a two pin female 0.1" header.
3. Fill the perimeter using copious amounts of solder and desoldering braid as a filler.
4. Use a file and sandpaper to remove excess solder and polish the burrs.

The result should be a flat disk with only two holes from the power header flush with the border. 
