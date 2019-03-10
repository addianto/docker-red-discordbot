# Red Discord Bot (V3) Container Image

This project provides a Docker container image that packages Red Discord Bot
(V3).

## How to Use

```bash
$ docker pull addianto/red-discordbot:latest
$ docker volume create redbot-data
$ docker run -d -i -t --name redbot --mount 'type=volume,source=redbot-data,destination=/home/redbot'
  ## In the container ...
$ redbot-setup
  ## Follow through the initialisation wizard
  ## Note: Use JSON as storage backend
$ redbot <INSTANCE_NAME>  ## Example: redbot bot
```

## Maintainers

- [@addianto](https://github.com/addianto)

## License

The [source code](https://github.com/Cog-Creators/Red-DiscordBot/) for the Red
Discord Bot itself is licensed under GNU GPL v3. The build configuration file
for creating the container image, including scripts in this project, are
licensed under [MIT](LICENSE) license.