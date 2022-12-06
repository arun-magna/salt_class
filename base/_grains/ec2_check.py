import requests


def ec2_check():
    # Instantiate the grains dictionary
    grains = {'cloud_info': []}

    base_url = 'http://169.254.169.254/latest/meta-data/'
    instance_id = requests.get(base_url + '/instance-id')
    instance_type = requests.get(base_url + '/instance-type')
    grains['cloud_info'].append({'provider': 'Amazon', 'instance_id': instance_id, 'instance_type': instance_type})
    return grains


if __name__ == '__main__':
    ec2_check()