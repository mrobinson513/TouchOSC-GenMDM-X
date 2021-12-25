#import yaml
import xml.etree.ElementTree as ET

tree = ET.parse("basic.xml")
root = tree.getroot()
print(root.tag)
for node in root.iter('node'):
    print(node.tag, node.attrib)
    for node_elems in node.iter():
        if "properties" in node_elems.tag:
            for prop_elems in node_elems.iter("property"):
                print(prop_elems.tag, prop_elems.attrib)
                for prop_sub in prop_elems.iter():
                    print(prop_sub.tag, prop_sub.text)