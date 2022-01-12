function onReceiveNotify(key, value)
    CC_NUM = value
    self.tag = CC_NUM --only logical way to save the value for future use
    print(self.name, self.tag)
end