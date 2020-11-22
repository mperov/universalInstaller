## universalInstaller
universalInstaller can help to create bash scripts for installing your tools on any Linux distributions.

## QuickStart
```
  git clone https://github.com/mperov/universalInstaller.git
  # Build your tool
  ./builder.sh /path/to/binaries/of/your/tool
  # Run sudo ./universalInstaller.sh on target machine with Linux
  # There is uninstaller can remove your tool from target machine:
  sudo ./universalUninstaller.sh
```

`sudo` allows to install your tool to `/usr/local`