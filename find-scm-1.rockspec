package = 'find'
version = 'scm-1'
description = {
  summary = 'Find value in a table',
  license = 'MIT'
}
source  = {
  url = 'file:///usr/local/src/app/'..package..'-'..version..'.tar.gz'
}
build = {
  type = 'builtin',
  modules = {
    ['find'] = 'init.lua',
  }
}
dependencies = {
  'lua >= 5.1'
}