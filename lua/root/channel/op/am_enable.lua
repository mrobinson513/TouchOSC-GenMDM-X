--control type: Button/Toggle Press

BASE_CC = 70 -- Amp Mod enable CC for OP1, range 70-73
SCALE = 127


function onValueChanged(key)
  if key == 'x' then
