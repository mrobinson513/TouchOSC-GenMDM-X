function onValueChanged(key)
    if key == 'x' then
      root.children["ALGOMAP"]:notify(tostring(self.values[key]))
    end
end

function onReceiveNotify(key)
  if key == "reload" then
    sendMIDI(
      {
        MIDIMessageType.CONTROLCHANGE,
        self.tag,
        math.ceil(self.values.x * 127)
      }
    )
    print("Reloading for:\n",
      "Control: ", self.name,
      "CC: ", self.tag,
      "Raw value:", math.ceil(self.values.x * 127)
    )
  end
end
