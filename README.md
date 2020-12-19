## universalInstaller
universalInstaller can help to create bash scripts for installing your tools on any Linux distributions.

## Requirements
You should contain your tool to directory with structure:
```
/path/to/your/tool/
|
| -- bin/
|    |
|    | -- binaries/of/your/tool
| -- lib/
|    |
|    | -- libs/of/your/tool
```

## QuickStart

#### on building Linux machine
0. Build your tool
1. `git clone https://github.com/mperov/universalInstaller.git`
2. `cd universalInstaller/`
3. `./builder.sh /path/to/your/tool`

#### on target Linux machine
1. `sudo ./universalInstaller.sh`
2. There is uninstaller can remove your tool from target machine: `sudo ./universalUninstaller.sh` 

## Don't worry

`sudo` only allows to install your tool to `/usr/local`
