from lxml import objectify

class Layout:

    def __init__(self, file):
        self.tree = objectify.parse(file).getroot()
    
    def get_root(self):
        node = self.tree.node if self.tree.node.attrib["type"] == "GROUP" else None
        self.root = node
    
    def get_children(self):
        # from the root group, get all of the children objects (not the same as XML Children!)
        children = self.get_root().children.getchildrren
        self.children = children
    
    def get_operator(self):
        groups = [ group for group in self.get_children() if "GROUP" in group.attrib.get("type") ]
        for params in groups:
            for property in params.properties.getchildren():
                if "tag" in property.key.text:
                    property.value
                  

                

        