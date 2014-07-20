class instance_roles::roles::webserver {
    # Role specific config
    include apache

    include mysql_client

    # etc
}
