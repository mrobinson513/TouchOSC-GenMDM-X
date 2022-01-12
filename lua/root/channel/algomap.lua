-- Use an RGB Combination to indicate signal flow
-- This is not meant to be a mathemetically accurate representation of the Algorithms. Just visual.
-- Adjust as needed

-- Algorithm 0: Op1=R:0.25, Op2=R:0.5, Op3=R:0.75, Op4=R:1.0
-- Algorithm 1: Op1=R:0.25, Op2=G:0.25, Op3=R:0.5,G:0.5, Op3=R:0.75,G:0.75
-- Algorithm 2: Op1=R:0.25, Op2=G:0.25, Op3=G:0.5, Op4=R:0.5, G:0.75
-- Algorithm 3: Op1=R:0.25, Op2=R:0.5, Op3=G:0.25, Op4=R:0.75, G:0.5
-- Algorithm 4: Op1=R:0.5, Op2=R:1, Op3=G:0.5, Op4:G:1
-- Algorithm 5: Op1=R:0.25, Op2=R:1, Op3=R:0.5,G:0.5, Op4=R:0.5,B:0.5
-- Algorithm 6: Op1=R:0.25, Op2=R:0.5, Op3=G:1, Op4=B:1
-- Algorithm 7: Just make them all R:1,G:1,B:1

MAP[0] = {"C1", "C2", "C3", "C4"}
MAP[1] = {"C1", "D1", "C3", "C4"}
MAP[2] = {"C1", "C2", "C3", "C4"}
MAP[3] = {"C1", "D1", "C3", "C4"}
MAP[4] = {"C1", "C2", "C3", "C4"}
MAP[5] = {"C1", "D1", "C3", "C4"}
MAP[6] = {"C1", "D1", "C3", "C4"}
MAP[7] = {"C1", "C2", "C3", "C4"}

function onReceiveNotify(key, value)
    print(MAP[value])