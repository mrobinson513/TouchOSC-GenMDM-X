SCALE = 128 / self.properties.steps

function onReceiveNotify(key, value)
    if key == "cc" then
        CC_NUM = value['ALGO']
    

function onValueChanged(key)
  if key == 'x' then
    CC_VAL = math.ceil(self.values[key] * SCALE)
    print("Step: ", self.values[key], "CC value", CC_VAL)
  end
end