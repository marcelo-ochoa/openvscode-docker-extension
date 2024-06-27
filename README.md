# OpenVS Code Web Docker Extension

OpenVS Code Web extension for Docker Desktop

## Installation from Marketplace

Since Docker Desktop [v4.11.0](https://docs.docker.com/desktop/release-notes/#docker-desktop-4110) VS Code Web Extension is available in Marketplace page, just click on **+ Add Extensions**, find OpenVS Code Web Extension, click Install and that's all; OpenVS Code Web icon its shown at left side menu.

## Manual Installation

If you are using Docker Desktop [v4.10.1](https://docs.docker.com/desktop/release-notes/#docker-desktop-4101) or less  you can install just by executing:

```bash
$ docker extension install mochoa/openvscode-docker-extension:1.90.1
Extensions can install binaries, invoke commands and access files on your machine.
Are you sure you want to continue? [y/N] y
Image not available locally, pulling mochoa/openvscode-docker-extension:1.90.1...
Installing new extension "mochoa/openvscode-docker-extension:1.90.1"
Installing service in Desktop VM...
Setting additional compose attributes
VM service started
Installing Desktop extension UI for tab "OpenVS Code Web"...
Extension UI tab "OpenVS Code Web" added.
Extension "OpenVS Code Web" installed successfully
```

**Note**: Docker Extension CLI is required to execute above command, follow the instructions at [Extension SDK (Beta) -> Prerequisites](https://docs.docker.com/desktop/extensions-sdk/#prerequisites) page for instructions on how to add it.

## Using OpenVS Code Web Docker Extension

Once the extension is installed a new extension is listed at the pane Extension of Docker Desktop.

By clicking at OpenVS Code Web icon the extension main window will display the OpenVS Code Web site once it has loaded.

### Addind extra packages

If want to run/debug NodeJS code a node command must be installed prior you checkout for project.
To simplify that an script is provided as post installation step, here an example of using them:

```bash
docker exec -ti openvscode_embedded_dd_vm /bin/sh -c "curl -s https://raw.githubusercontent.com/marcelo-ochoa/openvscode-docker-extension/main/addNodeJS.sh | bash"
```

Other run time extensions:

```bash
docker exec -ti openvscode_embedded_dd_vm /bin/sh -c "curl -s https://raw.githubusercontent.com/marcelo-ochoa/openvscode-docker-extension/main/addDocker.sh | bash"
```

```bash
docker exec -ti openvscode_embedded_dd_vm /bin/sh -c "curl -s https://raw.githubusercontent.com/marcelo-ochoa/openvscode-docker-extension/main/addJava.sh | bash"
```

```bash
docker exec -ti openvscode_embedded_dd_vm /bin/sh -c "curl -s https://raw.githubusercontent.com/marcelo-ochoa/openvscode-docker-extension/main/addPython.sh | bash"
```

```bash
docker exec -ti openvscode_embedded_dd_vm /bin/sh -c "curl -s https://raw.githubusercontent.com/marcelo-ochoa/openvscode-docker-extension/main/addOracleDevTools.sh | bash"
```

```bash
docker exec -ti openvscode_embedded_dd_vm /bin/sh -c "curl -s https://raw.githubusercontent.com/marcelo-ochoa/openvscode-docker-extension/main/addGKS.sh | bash"
```

Note 1: If you upgrade OpenVS Code Web Docker Desktop Extension above post installations steps must be re-done.

Note 2: If you add Docker Client/Extension support [addDocker.sh](https://raw.githubusercontent.com/marcelo-ochoa/openvscode-docker-extension/main/addDocker.sh) openvscode_embedded_dd_vm must be restarted, execute:

```bash
$ docker restart openvscode_embedded_dd_vm
openvscode_embedded_dd_vm
```

Note 3: If you are using Oracle Free Docker Desktop extension as RDBMS and Oracle Developer Tools for OpenVS Code refer RDBMS host as **host.docker.internal**, for example host.docker.internal:1521/FREEPDB1.

### Persistent storage

Any project that you checkout using git command into /home/workspace directory will persistent against Docker Desktop restart also OpenVS Code Web extension upgraded.

## Know kveats

If your Docker Desktop is running in Dark Mode, first execution of OpenVS Code Web will start in Light mode, switch to other pane back again to the extension and it will run in Dark mode. For the next switchs changing Docker Deskop UI colors will change automatically the extension setting.

## Uninstall

To uninstall the extension just execute:

```bash
$ docker extension uninstall mochoa/openvscode-docker-extension:1.90.1
Extension "OpenVS Code Web" uninstalled successfully
```

## Sources

As usual the code of this extension is at [GitHub](https://github.com/marcelo-ochoa/openvscode-docker-extension), feel free to suggest changes and make contributions, note that I am a beginner developer of React and TypeScript so contributions to make this UI better are welcome.
