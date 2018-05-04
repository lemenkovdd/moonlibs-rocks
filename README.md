# Usage
1. Add this repository to your Luarocks configuration file
    (for example, to `~/.luarocks/config.lua`)
    ```
	rocks_servers = {
		"https://raw.githubusercontent.com/lemenkovdd/moonlibs-rocks/master",
		"http://rocks.tarantool.org",
		"http://luarocks.org/repositories/rocks",
	}
	```
1. Set environment variable `LUAROCKS_CONFIG` to path to the configuration file.
1. Use `luarocks`

# Example

For example, let us install `connection.scribe` from
[moonlibs](https://github.com/moonlibs)
repository
(https://github.com/moonlibs/connection-scribe).
```
$ cat local-config.lua
rocks_servers = {
	"https://raw.githubusercontent.com/lemenkovdd/moonlibs-rocks/master",
	"http://rocks.tarantool.org",
	"http://luarocks.org/repositories/rocks",
}

$ LUAROCKS_CONFIG=local-config.lua luarocks --tree=local-tree install https://raw.githubusercontent.com/moonlibs/connection-scribe/master/connection-scribe-scm-1.rockspec
...
...
...
```
