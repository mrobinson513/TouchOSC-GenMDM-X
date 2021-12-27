SCALE = 127
CC_NUM = self.tag --get from object tag

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