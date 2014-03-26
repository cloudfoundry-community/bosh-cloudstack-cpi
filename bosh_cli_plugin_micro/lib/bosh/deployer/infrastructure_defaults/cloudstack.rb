module Bosh::Deployer::InfrastructureDefaults
  CLOUDSTACK = {
    'name' => nil,
    'logging' => {
      'level' => 'INFO'
    },
    'dir' => nil,
    'network' => {
      'type' => 'dynamic',
      'cloud_properties' => {}
    },
    'env' => {
      'bosh' => {
        'password' => nil
      }
    },
    'resources' => {
      'persistent_disk' => 4096,
      'cloud_properties' => {
        'instance_type' => 'm1.small',
        'availability_zone' => nil
      }
    },
    'cloud' => {
      'plugin' => 'cloudstack',
      'properties' => {
        'cloudstack' => {
          'endpoint' => nil,
          'api_key' => nil,
          'secret_access_key' => nil,
          'default_key_name' => nil,
          'default_zone' => nil,
          'default_security_groups' => [],
          'ssh_user' => 'vcap'
        },
        'registry' => {
          'endpoint' => 'http://admin:admin@localhost:25889',
          'user' => 'admin',
          'password' => 'admin'
        },
        'agent' => {
          'ntp' => [],
          'blobstore' => {
            'provider' => 'local',
            'options' => {
              'blobstore_path' => '/var/vcap/micro_bosh/data/cache'
            }
          },
          'mbus' => nil
        }
      }
    },
    'apply_spec' => {
      'properties' => {},
      'agent' => {
        'blobstore' => {},
        'nats' => {}
      }
    }
  }
end
