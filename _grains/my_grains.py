
def my_custom_grains():
    my_grains = {}
    my_grains['foo'] = 'bar'
    my_grains['birthday'] = 'Dec 04'
    return my_grains

def main():
    grains = {}
    grains['my_grains'] = my_custom_grains()
    return grains