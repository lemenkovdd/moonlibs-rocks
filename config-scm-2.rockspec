package = 'config'
version = 'scm-2'
source  = {
    url    = 'git://github.com/moonlibs/config.git',
    branch = 'master', -- later became v2
}
description = {
    summary  = "Package for loading external lua config",
    homepage = 'https://github.com/moonlibs/config.git',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ['config'] = 'config.lua';
        ['config.etcd'] = 'config/etcd.lua';
    }
}

-- vim: syntax=lua
