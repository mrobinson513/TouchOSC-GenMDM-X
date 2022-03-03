-- get all children
children = self.children

-- Continuous Controller Values
GLOBAL_CC = {}
CHANNEL_CC = {}
OPERATOR_CC = {}

-- Global settings
GLOBAL_CC["lfo"] = 74 -- LFO Enable
GLOBAL_CC["speed"] = 1 -- LFO Speed
GLOBAL_CC["pitch"] = 85 -- Pitch Transposition
GLOBAL_CC["octave"] = 84 -- Octave Division
GLOBAL_CC["region"] = 83 -- PAL/NTSC Tuning, or region setting
GLOBAL_CC["special"] = 80 -- Enable "special mode" in Voice 3
for i=1, #children do
    if children[i].tag == "global" then
        global = children[i]
        --global:notify("cc", GLOBAL_CC)
        print(global.name, global.tag)
    end
end

-- Channel settings
CHANNEL_CC["SAVE"] = 6 -- Preset Instrument Setting Store in RAM
CHANNEL_CC["LOAD"] = 9 -- Preset Instrument Setting recall from RAM
CHANNEL_CC["BEND"] = 81 -- Pitch Bend Amount
CHANNEL_CC["ALGO"] = 14 -- FM Algorithm
CHANNEL_CC["FBDK"] = 15 -- OP1 feedback 
CHANNEL_CC["OUT"] = 77 -- Stereo Configuration; None, Left, Right, Both
CHANNEL_CC["AM_AMT"] = 76 -- Amp Mod Depth
CHANNEL_CC["FM_AMT"] = 75 -- Freq. Mod Depth
for i=1, #children do
    if children[i].tag == "channel" then
        channel = children[i]
        --channel:notify("cc", CHANNEL_CC)
        print(channel.name, channel.tag)
    end
end



-- operators (rate scale is not used)
OPERATOR_CC["TL"] = {16,17,18,19} -- Total Level (Amplitude)
OPERATOR_CC["MULT"] = {20,21,22,23} -- Multiple (Tone Multiplier)
OPERATOR_CC["DT"] = {24,25,26,27} -- Detune
OPERATOR_CC["RS"] = {39,40,41,42} -- Rate Scale (not used)
OPERATOR_CC["AR"] = {43,44,45,46} -- Attack Rate
OPERATOR_CC["1DR"] = {47,48,49,50} -- 1st Decay Rate
OPERATOR_CC["SUS"] = {55,56,57,58} -- sustain, AKA "secondary amp level"
OPERATOR_CC["2DR"] = {51,52,53,54} -- 2nd Decay Rate
OPERATOR_CC["RR"] = {59,60,61,62} -- Release Rate
OPERATOR_CC["AM"] = {70,71,72,73} -- Amp Mod Enable
OPERATOR_CC["SSG"] = {90,91,92,93} -- SSG-EG envelope pattern
for i=1, #children do
    if children[i].tag == "operator" then
        operator = children[i]
        -- operator:notify("cc", OPERATOR_CC)
        print(operator.name, operator.tag)
    end
end