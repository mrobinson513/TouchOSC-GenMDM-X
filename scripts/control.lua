function onReceiveNotify(key, value)
    print(key)
    if key == "cc" then
        CC_NUM = value
        self.tag = CC_NUM --only logical way to save the value for future use
        print(self.name, self.tag)
    elseif key == "reload" then
        sendMIDI(
            {
                MIDIMessageType.CONTROLCHANGE,
                self.tag,
                math.ceil(self.values.x * 127)
            }
        )
        print("Reloading for: ",
            "Control: ", self.name,
            "CC: ", self.tag,
            "Raw value:", math.ceil(self.values.x * 127)
        )
    end
end
