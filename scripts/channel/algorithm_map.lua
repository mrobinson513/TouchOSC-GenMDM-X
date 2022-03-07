function onReceiveNotify(key)
    if key == "reload" then
        print("Nothing to do here")
    else
        boxes = self.children
        algo_num = tonumber(key) + 1

        algo_map = {}

        algo_map[1] = {"C1","C2","C3","C4"} --ALG0
        algo_map[2] = {"B2","D2","C3","C4"} --ALG1
        algo_map[3] = {"B3","C2","C3","C4"} --ALG2
        algo_map[4] = {"C2","C3","D3","C4"} --ALG3
        algo_map[5] = {"C2","C3","D2","D3"} --ALG4
        algo_map[6] = {"C2","B3","C3","D3"} --ALG5
        algo_map[7] = {"B2","B4","C4","D4"} --ALG6
        algo_map[8] = {"D1","D2","D3","D4"} --ALG7

        print(unpack(algo_map[algo_num]))
        for i=1,#boxes do
                boxes[i].color = Color(1.0,0,0)
                boxes[i].values.text = ""
        end

        for i=1,#algo_map[algo_num] do
            boxes[algo_map[algo_num][i]].color = Color(1.0, 1.0, 1.0)
            if algo_num < 8 and not (algo_num == 5) then
                boxes[algo_map[algo_num][i]].values.text = "->"
            else
                boxes[algo_map[algo_num][i]].values.text = "V"
            end
        end
    end
end
