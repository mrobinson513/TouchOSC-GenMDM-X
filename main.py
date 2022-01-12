#import yaml
#import xml.etree.ElementTree as ET
from touchosc.layout import Layout

layout = Layout("genmdm-x.xml")
ops = layout.get_operators()

scripts = {
    "operator": "./lua/root/channel/group_op.lua"
}

for op in ops:
    layout.check_script(op)
    print(
        layout.add_script(
            op, open(scripts["operator"], "r").read()
        )
    )
