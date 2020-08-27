## Electronics
Collection of all the electronic components needed to build a Basilator. Electronic circuits and parts were documented using [KiCAD](https://kicad-pcb.org/download/).

## Additional information

### N-channel MOSFET IRLB8721
This project utilizes a IRLB8721 N-channel MOSFET to switch and regulate the LEDs and water pump. This [webshop](https://protosupplies.com/product/transistor-n-ch-mosfet-irlb8721-30v-62a/) describes the IRLB8721 quite well and explains which parameters are important for projects with 3,3V/5V logic voltage.

**Why use this MOSFET instead of a relais?**
With the MOSFET it is possible to regulate the light intensity which is important when the growth chamber is used with different plant species (which might have different light preferences). It is not necessary to switch the water pump with a MOSFET but if you are using a peristaltic pump you can easily regulate the amount of water transported.

[MOSFET IRLB8721 Datasheet](https://datasheet.octopart.com/IRLB8721PBF-Infineon-datasheet-8326873.pdf)
