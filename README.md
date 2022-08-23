# Docker-Workspace-Test
Creating a docker image to hold the [CSIRO WORKSPACE](https://research.csiro.au/workspace/download/) desktop application. A [python library](https://github.com/csiro-workspace/workspace-python) will interface with this application. Finally, the data from the interface should be passed to fastAPI for data streaming.

Note: please download the workspace [debian package](https://data.csiro.au/dap/ws/v2/collections/53321/data/13202983) and rename it to ***"workspace.deb"*** in the ***./script*** directory.
