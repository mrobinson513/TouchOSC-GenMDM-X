SCALE = 127

function onReceiveNotify(key, value)
    CC_NUM = value['AM'][key]
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