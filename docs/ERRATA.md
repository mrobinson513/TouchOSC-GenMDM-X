# Known issues

## Op2 / Op3 mismatch
Based on some thorough testing, it's been concluded that the CC mappings for Operator 1 and 2 are flipped. Clearly an oversite but unsure where that's managed (the controller board or the cart), regardless here we must compensate.

## CH3 Special Mode
It's difficult to tell how this is meant to work (see manual), but there may be an issue related to the above situation.

A relatively simple way to start with CH3SM is to set CH3 algorithm to 7, raise all TLs and set each MULT to something a little different.

## Monophonic glitches
While the chip is technically 6 voices, GenMDM splits each voice into its own channel. Therefore polyphony is not possible out of the box. Unfortunately, there is a glitch in either the 2612 or GenMDM; if a NOTE ON event is succeeded by another NOTE ON before a NOTE OFF, the second note will interrupt and neither will output. This is problematic for live performance especially if Legato is desired, but easily worked around in a sequencer.

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

