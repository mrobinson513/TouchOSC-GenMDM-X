if self:getValueProperty("x") == ValueType.FLOAT then
    v_mult = 128
    v_midi = math.ceil(self.values.x * v_mult)
else if self:getValueProperty("x") == ValueType.INTEGER then
    v_mult = 128 / self.properties.steps
    v_midi = math.ceil(self.values.x * v_mult)
else if self:getValueProperty("x") == ValueType.BOOLEAN then
    v_midi = tonumber(self.values.x)
end


function onReceiveNotify(key, value)
    print(key)
    if key == "cc" then
        CC_NUM = value
        self.tag = CC_NUM --only logical way to save the value for future use
        print(self.name, self.tag)
    elseif(key == "midi_ch") then
        MIDI_CH = value
        self.name = MIDI_CH
    end
end
