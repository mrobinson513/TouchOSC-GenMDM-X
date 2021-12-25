SCALE = 127

print(self.name)
OP_NUM = to_number(self.parent.tag) -- Use the tag of the container group to identify the operator

function onValueChanged(key)
    if key == 'x' then
        CC_VAL = math.ceil(self.values[key] * SCALE)
        -- Debug output
        print(
            'CC Number: ', 
        )