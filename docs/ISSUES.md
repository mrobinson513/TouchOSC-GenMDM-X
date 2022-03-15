# Known issues

## Op2 / Op3 mismatch
Based on some thorough testing, it's been concluded that the CC mappings for Operator 2 and 3 are flipped. Clearly an oversite but unsure where that's managed (the controller board or the cart), regardless here we must compensate.

## CH3 Special Mode
It's difficult to tell how this is meant to work (see manual), but there may be an issue related to the above situation.

A relatively simple way to start with CH3SM is to set CH3 algorithm to 7, raise all TLs and set each MULT to something a little different.

## Monophonic glitches
While the chip is technically 6 voices, GenMDM splits each voice into its own channel. Therefore polyphony is not possible out of the box. In GenMDM, Legato can be achieved by playing proceeding notes while ther first note is still ON; a NOTE_OFF event will act as a NOTE_OFF for the entire channel.

## Saving presets
It's not yet clear if presets are actually saved. `GENMDM_103.txt#L60` implies that presets are saved to RAM, which typically means anything in RAM is lost after a power cycle.

## Output quality
Many Genesis / Megadrive models available for sale these days, either Model1 or Model2, have the unfortunate luck of having inferior sound circuitry. The chip usage itself doesn't appear to be the issue, instead relates to the amplification circuitry. Some mods have been published to improve the amp quality, but requires some careful soldering.

# Out of scope controls

## All DAC related controls

GenMDM has some built in samples for DAC however no custom sampling is possible. Some very simple waveform controls are available by setting CC#100-113 to values between 0-127. Since the goal of this project is the synth portions, these controls are not scoped.

## **Dangerous** Global Controls
* Pitch Transposition
* Octave Division
* PAL/NTSC Tuning
* Test Register controls
It's not entirely clear what these are meant to do, in some cases the CC# is shared with other controls

## Channel / Voice
* Preset Recall
* Preset Save
No idea how these work yet, documentation is lacking. Does it retain like a save game?

# Hardware use (currently undocumented)

## Power-up
There's an issue where if the peripheral is connected when the console is powered on, it will not "initialize". In order to properly initialize, the current manual workflow is:
* Power the console with the device disconnected
* Wait for the "start" note to play
* wait about 5 seconds then connect the device to controller port 2
* If a distorted sounding "chord" plays on connect, the device is initialized and ready for use