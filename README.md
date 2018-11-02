# Dotfiles
Archivos de configuración personal de [Vim], [Bash] y [Tmux]

## Instalación

Los Dotfiles _los archivos que empiezan por un punto_ sirven para configurar
ciertos programas y características en una sesión de usuario en
[GNU-Linux]. Se encuentran en nuestra HOME.

Tenemos los archivos `~/.vimrc`, `~/.bashrc` y `~/.tmux.conf` que configuran
los programas [Vim], [Bash] y [Tmux] respectivamente.

La Instalación requiere [Git] para usar el comando [`git clone`] para copiar el
repositorio a `~/.bvtconfig`.

   ```shell
   cd ~
   git clone https://github.com/xguestone/dotfiles.git ~/.bvtconfig
   cd .bvtconfig
   ./install.sh
   ```

Lo que hace `install.sh` es verificar si hay `~/.vimrc`, `~/.bashrc` y
`~/.tmux.conf`. Si ya hay archivos creados lo que hace es guardarlos con la
extensión -back y luego procede a copiar los archivos.

[GNU-Linux]:https://www.gnu.org/gnu/linux-and-gnu.en.html
[Git]:http://git-scm.com
[Vim]:http://www.vim.org
[Tmux]:https://github.com/tmux/tmux/wiki
[Bash]:https://www.gnu.org/software/bash/
[`git clone`]:https://git-scm.com/docs/git-clone
