# Ark Server Hosting

## SteamCMD

First, you need to
[download SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) and open
it.

Next, log in to the Steam Public API

```bash
login anonymous
```

### Download/Update Ark Survival Ascended Dedicated Server

```bash
app_update 2430930 validate
```

### Download/Update Ark Survival Evolved Dedicated Server

```bash
app_update 376030 validate
```

## Port Forwarding

In order to make your dedicated server available to others, you'll need top open
a few ports on your network. This varies by router, but I use Google WiFi which
has a convenient app.

`Settings` -> `Network & General` -> `Advanced networking` -> `Port management`
-> add the following ports:

- 7777
- 7778
- 27015

## Server Start Script

Drop an existing `<name-your-server>.bat` script into
`<YOUR_ARK_SERVER_FOLDER>/ShooterGame/Binaries/Win64`. For example:
`C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Binaries\Win64`

Alternatively, create you own `<name-your-server>.bat` script.

I recommend creating a shortcut from your script to your desktop or some other
location for easy access.

## Server Settings

The following 2 files are the most important for configuring your server
settings. They should be added to
`<YOUR_ARK_SERVER_FOLDER>/ShooterGame/Saved/Config/WindowsServer`. For example:
`C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Saved\Config\WindowsServer`

### [Game.ini](https://ark.wiki.gg/wiki/Server_configuration#Game.ini)

### [GameUserSettings.ini](https://ark.wiki.gg/wiki/Server_configuration#GameUserSettings.ini)

## Server Backups

I recommend making symbolic links between your worlds/settings and this
repository. When making the symbolic links, open powershell with escalated
privileges. Examples of backups are shown below.

### World Backup

Move your saved Arks to this repo and set up a symbolic link. Examples below.

#### ASA Symbolic Link

Run powershell as an administrator.

```powershell
New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Ascended Dedicated Server\ShooterGame\Saved\SavedArks\TheIsland_WP" -Target "C:\Users\Joshua\dev\ark\server-hosting\ASA\TheIsland_WP"
```

#### ASE Symbolic Link

Run powershell as an administrator.

```powershell
New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Saved\Fjordur" -Target "C:\Users\Joshua\dev\ark\server-hosting\ASE\Fjordur"
```

### Settings Backup

Move your `GameUserSettings.ini` and `Game.ini` files to this repo and create a symbolic link. Examples below.

#### ASA Symbolic Link

Run powershell as an administrator.

```powershell
New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Ascended Dedicated Server\ShooterGame\Saved\Config\WindowsServer\Game.ini" -Target "C:\Users\Joshua\dev\ark\server-hosting\ASA\settings\Game.ini"

New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Ascended Dedicated Server\ShooterGame\Saved\Config\WindowsServer\GameUserSettings.ini" -Target "C:\Users\Joshua\dev\ark\server-hosting\ASA\settings\GameUserSettings.ini"
```

#### ASE Symbolic Link

Run powershell as an administrator.

```powershell
New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Saved\Config\WindowsServer\Game.ini" -Target "C:\Users\Joshua\dev\ark\server-hosting\ASE\settings\Game.ini"

New-Item -ItemType SymbolicLink -Path "C:\Users\Joshua\Desktop\steamcmd\steamapps\common\ARK Survival Evolved Dedicated Server\ShooterGame\Saved\Config\WindowsServer\GameUserSettings.ini" -Target "C:\Users\Joshua\dev\ark\server-hosting\ASE\settings\GameUserSettings.ini"
```

Once you've made your symbolic links between your settings and your world, just
update your settings from this repo when you want to tweak things and commit
your world updates every so often.

## Mods

TODO

## Additional Resources

### ASA

- [TroubleChute's Dedicated Server Guide](https://hub.tcno.co/games/asa/dedicated_server/)
- [Server Configuration Wiki](https://ark.fandom.com/wiki/Server_configuration)

### ASE

- [Detailed Ark Server Hosting Video](https://www.youtube.com/watch?v=o1dcWkSzGd4)
- [Dedicated Server Setup Wiki](https://ark.fandom.com/wiki/Dedicated_server_setup)
- [Server Configuration Wiki](https://ark.fandom.com/wiki/Server_configuration)
- [ARK Server Manager](https://steamcommunity.com/sharedfiles/filedetails/?id=468312476)
