-- colour coding
-- each "path" to the output represents a colour
-- each operator represents 25% of the possible total value of the path colour.
-- examples:
-- ALG0 has a single path through each operator, therefore OP4 will be 100% Red
--
-- ALG1 has 2 paths to OP4. Op1 is 25% red, Op2 %25 blue. The path converges at OP3, 
-- so Op3 is 25% Red AND 25% Blue (so, purple). Op4 will add another 25% of each colour
--
-- ALG5's path splits from OP1 parallel into Op2,3 and 4. Colours consist of 25% of each Op1 and 2,
-- then 25% of Op1 and Op3, then 25% of Op1 and Op4
--
-- This is probably insanity, as once we get to ALG7 there are 4 parallel paths to output, thus 4 unique
-- colours. Yet, there are only 3 args to fill for colour (R,G,B)

boxes = self.children
algo = root.children["ALGO"]
print(algo.values.x + 1)

algo_map_enable = {}
algo_map_label = {}
algo_map_colour = {}

algo_map[1] = {"C1","C2","C3","C4"}
algo_map[2] = {"B2","D2","C3","C4"}
algo_map[3] = {"B3","C2","C3","C4"}
algo_map[4] = {"C2","C3","D3","C4"}
algo_map[5] = {}
algo_map[6] = {}
algo_map[7] = {}
algo_map[8] = {}
