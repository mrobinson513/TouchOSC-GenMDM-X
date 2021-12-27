
SCALE = 128 / self.properties.steps
CC_NUM = tonumber(self.tag)

function onValueChanged(key)
  if key == 'x' then
    CC_VAL = math.ceil(self.values[key] * SCALE)
    print("Step: ", self.values[key], "CC value", CC_VAL)
    algomap = self.parent:findByName("ALGOMAP")
    algomap:notify("step",self.values[key])
  end
end