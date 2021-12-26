#import yaml
import xml.etree.ElementTree as ET

tree = ET.parse("genmdm-x.xml")
root = tree.getroot()
print(root.tag)
for node in root.iter('node'):
    print(node.tag, node.attrib)
    for node_elems in node.iter():
        if "properties" in node_elems.tag:
            for prop_elems in node_elems.iter("property"):
                if "node" in prop_elems.tag:
                    for prop_sub in prop_elems.iter():
                        print(prop_sub.tag, prop_sub.text)