-- operators (rate scale is not used)
OPERATOR_CC = {}

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