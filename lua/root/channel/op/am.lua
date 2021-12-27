SCALE = 127

function onReceiveNotify(key, value)
    CC_NUM = value[self.name][key]
    self.tag = CC_NUM --only logical way to save the value for future use
end

function onValueChanged(key)
    if key == 'x' then
        CC_VAL = math.ceil(self.values[key] * SCALE)
        -- Debug output
        print(
            'CC Number: ', CC_NUM,
            'CC Value: ', CC_VAL
        )
        sendMIDI({ MIDIMessageType.CONTROLCHANGE, CC_NUM, CC_VAL })
    end
end