from lxml import objectify
from lxml.etree import CDATA, XMLParser
class Layout:
    def __init__(self, file):
        self.file = file
        parse = XMLParser(strip_cdata=False)
        self.tree = objectify.parse(self.file, parse).getroot()

    def get_root(self):
        node = self.tree.node if "GROUP" in self.tree.node.attrib["type"] else "DeadEnd"
        return node

    def get_children(self):
        # from the root group, get all of the children objects (not the same as XML Children!)
        children = self.get_root().children.getchildren()
        return children

    def get_properties(self, property):
        return {
            property.key.text: property.value.text
        }


    def get_operators(self):
        '''
        find a specific group object with the tag operator.
        These represent the grouped FM Operator controls.
        '''
        i = 0
        operators = set()
        groups = [ group for group in self.get_children() if "GROUP" in group.attrib.get("type") ]
        for params in groups:
            for property in params.properties.getchildren():
                if ("tag" in property.key.text and "operator" in property.value.text):
                    print(property.value.text)
                    operators.add(groups[i])
                    i += 1
        return operators
                    
    def check_script(self, object):
        script = False
        properties = object.properties
        for property in properties.getchildren():
            if "script" in property.key.text:
                print(f"script found")
                print(property.value.text)
                script = True
            else:
                continue
        return script
    
    def add_script(self, object, script):

        properties = object.properties
        script_data = CDATA(script)
        PROP = objectify.SubElement(properties, "property", type="s")
        PROP_KEY = objectify.SubElement(PROP, "key")
        PROP_VALUE = objectify.SubElement(PROP, "value")
        PROP.key = "script"
        PROP.value = CDATA(script)

        return [
            PROP.key.text, PROP.value.text
        ]




