# `> MINECRAFT LAUNCHER`

```text
============================================================
                 MINECRAFT LAUNCHER
============================================================

Version : 0.8
Author  : Eduardo665e
Language: Batch
Target  : Minecraft 1.8.8

> STATUS: ONLINE
> MODE  : STANDALONE
============================================================
```

## `> ABOUT`

A simple, self-contained Minecraft launcher built entirely with **Windows Batch**.

The project was created with a simple idea:

```text
NO BLOAT
NO UNNECESSARY UI
NO COMPLEX SETUP

JUST:
     JAVA
     MINECRAFT
     LAUNCH
```

The launcher is designed to provide a simple and nostalgic Minecraft experience while keeping everything organized inside a single directory.

---

## `> FEATURES`

```text
[+] Minecraft 1.8.8 support
[+] Bundled Java runtime
[+] Local libraries
[+] Native libraries
[+] Local game files
[+] Profile system
[+] Multiple player profiles
[+] Profile selection
[+] Profile creation / update / deletion
[+] Version management
[+] Debug tools
[+] Command-line interface
[+] No external launcher required
```

---

## `> PROFILE SYSTEM`

Profiles are stored locally using a simple database-like structure.

```text
ID | PROFILE | PLAYER | VERSION | LOADER
------------------------------------------------
1  | DEFAULT | Player | 1.8.8   | VANILLA
2  | RETRO   | Steve  | 1.8.8   | VANILLA
```

The profile name and Minecraft player name are independent.

Example:

```text
PROFILE : CODEVIBE
PLAYER  : Eduardo
```

---

## `> COMMANDS`

The launcher provides a command-oriented interface.

```text
version -1.8.8

-s -c
-s -p
-s -p -se <NAME>

-s about
```

Profile management:

```text
INFO -l -p
SELECT -NAME
SELECT -ID
CREATE
UPDATE
DELETE
USE
INFO
```

The interface is intentionally designed to feel like a traditional Windows command prompt.

---

## `> DIRECTORY`

```text
launcher/
│
├── launcher.bat
│
├── java/
│   └── bin/
│       └── java.exe
│
├── versions/
│   └── 1.8.8/
│
├── libraries/
│
├── natives/
│
├── assets/
│
├── database/
│   ├── profiles.db
│   └── active_profile.db
│
├── systemBat/
│
├── saves/
│
└── options.txt
```

Everything required by the launcher is organized locally whenever possible.

---

## `> INSTALLATION`

```text
1. Download the latest release.
2. Extract the ZIP.
3. Open the launcher directory.
4. Run:

   launcher.bat
```

No installer is required.

---

## `> REQUIREMENTS`

```text
OS      : Windows
Minecraft: 1.8.8
Java    : Bundled with the launcher
```

The launcher is currently designed for Windows.

---

## `> PROJECT STATUS`

```text
[████████████████████] 100%

CURRENT VERSION : 0.8
CURRENT TARGET  : 1.8.8

STATUS:
    [OK] Launcher
    [OK] Minecraft startup
    [OK] Profiles
    [OK] Native libraries
    [OK] Sound
    [OK] Assets
```

Future versions may expand version support beyond Minecraft 1.8.8.

---

## `> PHILOSOPHY`

```text
A launcher does not need to be complicated.

START
  |
  v
LOAD PROFILE
  |
  v
LOAD VERSION
  |
  v
START MINECRAFT
  |
  v
DONE
```

The project focuses on **simplicity, control and nostalgia** rather than reproducing the interface of modern launchers.

---

## `> LICENSE / DISTRIBUTION`

This project is an independent launcher project and is not affiliated with Mojang Studios or Microsoft.

Minecraft itself is property of its respective owners.

This repository contains the launcher software and project files. Users are responsible for obtaining Minecraft and any required game content through legitimate means.

---

## `> AUTHOR`

```text
============================================================
AUTHOR
============================================================

Eduardo665e

Project:
    Minecraft Launcher

Version:
    0.8

Language:
    Batch

============================================================
> END OF FILE
============================================================
```
