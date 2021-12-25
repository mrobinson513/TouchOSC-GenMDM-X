from xml.dom import minidom

doc = minidom.parse("basic.xml")

nodes = doc.getElementsByTagName("node")

for node in nodes:
    properties = node.getElementsByTagName("properties")
    for prop in properties:
        for subprop in prop.getElementsByTagName("key"):
            print(subprop)