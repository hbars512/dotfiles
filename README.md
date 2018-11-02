# Dotfiles
Archivos de configuración personal de [vim], [bash] y [tmux]

## Instalación

Los Dotfiles _los archivos que empiezan por un punto_ sirven para configurar
ciertos programas y características en una sesión de usuario en
[GNU-Linux](https://www.gnu.org/gnu/linux-and-gnu.en.html). Se encuentran en
nuestra HOME.

Tenemos los archivos `~/.vimrc`, `~/.bashrc` y `~/.tmux.conf` que configuran
los programas [Vim], [Bash] y [Tmux] respectivamente.

La Instalación requiere [Git] para usar el comando [`git clone`] para copiar el
repositorio a `~/configuracion`.

   `git clone https://github.com/xguestone/dotfiles.git ~/configuracion`

Luego de la descarga ingresar a la carpeta creada `~/configuracion` e instalar usando:

   `./install.sh`

Lo que hace `install.sh` es verificar si hay `~/.vimrc`, `~/.bashrc` y `~/.tmux.conf`. Si ya hay archivos creados lo que hace es guardarlos con la extensión -back y luego procede a copiar los archivos.
