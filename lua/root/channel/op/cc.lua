-- Continuous Controller Values
CC = {}

-- Global settings
CC["lfo"] = 74 -- LFO Enable
CC["speed"] = 1 -- LFO Speed
CC["pitch"] = 85 -- Pitch Transposition
CC["octave"] = 84 -- Octave Division
CC["region"] = 83 -- PAL/NTSC Tuning, or region setting
CC["special"] = 80 -- Enable "special mode" in Voice 3

-- Channel settings
CC["store"] = 6 -- Preset Instrument Setting Store in RAM
CC["recall"] = 9 -- Preset Instrument Setting recall from RAM
CC["bend"] = 81 -- Pitch Bend Amount
CC["algo"] = 14 -- FM Algorithm
CC["fdbk"] = 15 -- OP1 feedback
CC["output"] = 77 -- Stereo Configuration; None, Left, Right, Both
CC["amlvl"] = 76 -- Amp Mod Depth
CC["fmlvl"] 75 -- Freq. Mod Depth

-- operators (rate scale is not used)
CC["tl"] = {16,17,18,19} -- Total Level (Amplitude)
CC["mult"] = {20,21,22,23} -- Multiple (Tone Multiplier)
CC["dt"] = {24,25,26,27} -- Detune
CC["rs"] = {39,40,41,42} -- Rate Scale (not used)
CC["ar"] = {43,44,45,46} -- Attack Rate
CC["dr1"] = {47,48,49,50} -- 1st Decay Rate
CC["sus"] = {55,56,57,58} -- sustain, AKA "secondary amp level"
CC["dr2"] = {51,52,53,54} -- 2nd Decay Rate
CC["rr"] = {59,60,61,62} -- Release Rate
CC["am"] = {70,71,72,73} -- Amp Mod Enable
CC["ssg"] = {90,91,92,93} -- SSG-EG envelope pattern

