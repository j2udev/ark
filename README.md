# Ark Server Hosting

## Getting Started

This quick guide details _one way_ to run a dedicated Ark server.

First, you need to
[download SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) and open
it.

Next, log in to the Steam Public API

```bash
login anonymous
```

and grab the Ark server (this is also used to update Ark)

```bash
app_update 376030 validate
```

then exit SteamCMD

```bash
exit
```

## Port Forwarding

In order to make your dedicated server available to others, you'll need top open
a few ports on your network. This varies by router, but I use Google WiFi which
has a convenient app.

`Settings` -> `Network & General` -> `Advanced networking` -> `Port management`
-> add the following ports:

- 7777
- 27015

## Server Start Script

Drop an existing `Start_<MAP>.bat` script into
`<YOUR_ARK_SERVER_FOLDER>/ShooterGame/Binaries/Win64`. For example:
`C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Binaries\Win64`

Alternatively, create you own `Start_<YOUR_MAP>.bat` script.

I recommend creating a shortcut from your script to your desktop or some other
location for easy access.

## Server Settings

The following 2 files are the most important for configuring your server
settings. They should be added to
`<YOUR_ARK_SERVER_FOLDER>/ShooterGame/Saved/Config/WindowsServer`. For example:
`C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Saved\Config\WindowsServer`

### [Game.ini](https://ark.fandom.com/wiki/Server_configuration#Game.ini)

### [GameUserSettings.ini](https://ark.fandom.com/wiki/Server_configuration#GameUserSettings.ini)

## Server Backups

I recommend making symbolic links between your worlds/settings and this
repository. When making the symbolic links, open powershell with escalated
privileges. Examples of backups are shown below.

### World Backup Symbolic Link

```powershell
New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Saved\Fjordur" -Target "C:\Users\Joshua\dev\ark\server-hosting\Fjordur"
```

### Settings Backup Symbolic Link

```powershell
New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Saved\Config\WindowsServer\Game.ini" -Target "C:\Users\Joshua\dev\ark\server-hosting\settings\Game.ini"

New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Saved\Config\WindowsServer\GameUserSettings.ini" -Target "C:\Users\Joshua\dev\ark\server-hosting\settings\GameUserSettings.ini"
```

Once you've made your symbolic links between your settings and your world, just
update your settings from this repo when you want to tweak things and commit
your world updates every so often.

## Additional Resources

- [Detailed Ark Server Hosting Video](https://www.youtube.com/watch?v=o1dcWkSzGd4)
- [Dedicated Server Setup Wiki](https://ark.fandom.com/wiki/Dedicated_server_setup)
- [Server Configuration Wiki](https://ark.fandom.com/wiki/Server_configuration)
- [ARK Server Manager](https://steamcommunity.com/sharedfiles/filedetails/?id=468312476)
