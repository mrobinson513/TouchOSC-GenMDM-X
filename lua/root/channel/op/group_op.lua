OP_NUM = tonumber(self.name)
CONTROLS = self.children

function onReceiveNotify(key, value)
    if key == "cc" then
    for i=1, #CONTROLS do
        if CONTROLS[i].type ~= ControlType.LABEL then
            CTRL = CONTROLS[i]
            print(CTRL.name)
            CTRL:notify(OP_NUM, value[CTRL.name])
        end
    end
end