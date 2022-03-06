everything = root.children

function onValueChanged(key)
    if key == "touch" and self.values[key] then
        for i=1,#everything do
            if not (everything[i].name == self.name) then
                --print(
                --    "Sending reload signal to ",
                --    everything[i].name
                --)
                everything[i]:notify("reload")
            end
        end
    end
end