class instance_roles($role='') {

    notify{"instance role: '${role}'": }

    # Include any common config
    include instance_roles::roles::common

    # Include role specific config
    include "instance_roles::roles::${role}"
}
