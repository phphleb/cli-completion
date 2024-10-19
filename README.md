## CLI-COMPLETION

[![HLEB2](https://img.shields.io/badge/HLEB-2-darkcyan)](https://github.com/phphleb/hleb) ![PHP](https://img.shields.io/badge/PHP-^8.2-blue) [![License: MIT](https://img.shields.io/badge/License-MIT%20(Free)-brightgreen.svg)](https://github.com/phphleb/hleb/blob/master/LICENSE)

Extends CLI support for the **HLEB2** [framework](https://github.com/phphleb/hleb/) >= v2.0.27

Install using Composer:
 ```bash
composer require phphleb/cli-completion
 ```
--------------------------

> After installation, auto-completion of console commands (`php console`) by pressing **Tab** will substitute suitable framework commands.

> If you have several projects based on the HLEB2 framework, then copy the library files to the user's root folder and specify the path there.

# Bash

### Linux

For Linux, in a terminal running Bash, add the following line to the ~/.bashrc file. For instance, if the library is installed in a project located at /home/user/web/hleb/, add the following:

```bash
source /home/user/web/hleb/vendor/phphleb/cli-completion/bash/hleb2bash.sh
```

After adding, restart the terminal or run source ~/.bashrc to apply the changes. Autocompletion will work for all projects based on the HLEB2 framework.


### macOS

On macOS, the process is similar. You need to add the line to the ~/.bash_profile or ~/.bashrc file, depending on your terminal setup. For example:

```bash
source /Users/user/web/hleb/vendor/phphleb/cli-completion/bash/hleb2bash.sh
```

Afterward, restart the terminal or run source ~/.bash_profile or source ~/.bashrc to apply the changes. Autocompletion will be available for all HLEB2-based projects.

