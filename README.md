# LuaJIT plyground

## Usage

The root of the repository will be mounted to the /playground directory inside the container.

`test.lua` will be executed on `docker-compose up`, so it may be used as the entrypoint for your scripts.

External libraries may be added in the `Dockerfile` (e.g.: `RUN luarocks install penlight`).