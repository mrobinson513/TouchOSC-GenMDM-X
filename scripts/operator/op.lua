OP_NUM = tonumber(self.name)
CONTROLS = self.children
OPERATOR_CC = {}
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

function init()
    CH_NUM = 1
    for i=1, #CONTROLS do
        if CONTROLS[i].name == "channel_select" then
            CH_NUM = tonumber(CONTROLS[i].values.x+1)
        end
        if CONTROLS[i].type ~= ControlType.LABEL then
            ctrl = CONTROLS[i]
            CC_NUM = OPERATOR_CC[ctrl.name][OP_NUM]
            -- operator:notify("cc", OPERATOR_CC[name])
            print(
                "Channel:", CH_NUM,
                "Operator:", OP_NUM,
                "Control:", ctrl.name,
                "CC:", CC_NUM
            )
            ctrl:notify("cc", CC_NUM)
        end
    end
end

function onReceiveNotify(key)
    if key == "reload" then
        for i=1, #CONTROLS do
            ctrl = CONTROLS[i]
            ctrl:notify("reload")
        end
    end
    if key == "channel" then
        for i=1, #CONTROLS do
            ctrl = CONTROLS[i]  
end
