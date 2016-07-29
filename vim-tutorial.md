# Vim Bépo

|                                                  | Command               | Mode | Context          |
|--------------------------------------------------|-----------------------|:----:|------------------|
| __Plugins__                                                                                        |
|                                                                                                    |
| Install Plugins                                  | `:PlugInstall`        | n    |                  |
| Update Plugins                                   | `:PlugUpdate`         | n    |                  |
|                                                                                                    |
| __Basics__                                                                                         |
|                                                                                                    |
| Insert                                           | `i`                   | n    |                  |
| Insert at beginning of the line                  | `I`                   | n    |                  |
| Insert after charactere                          | `a`                   | n    |                  |
| Insert at end of the line                        | `A`                   | n    |                  |
| Cancel                                           | `u`                   | n    |                  |
| Save                                             | `:w`                  | n    |                  |
| Save                                             | `à`                   | n    |                  |
| Quit                                             | `:q`                  | n    |                  |
| Quit                                             | `<leader>q`           | n    |                  |
| Esc                                              | `vv`                  | i    |                  |
|                                                                                                    |
| __Copy__                                                                                           |
|                                                                                                    |
| Line                                             | `yy`                  | n    |                  |
| Word                                             | `yw`                  | n    |                  |
| Beginning of the line                            | `y0`                  | n    |                  |
| End of line                                      | `y$`                  | n    |                  |
|                                                                                                    |
| __Paste__                                                                                          |
|                                                                                                    |
| Paste                                            | `p`                   | n    |                  |
|                                                                                                    |
| __Comment__                                                                                        |
|                                                                                                    |
| Toggle comments                                  | `<c-__>`              | n    |                  |
|                                                                                                    |
| __Config__                                                                                         |
|                                                                                                    |
| Edit .vimrc                                      | `<leader>av`          | n    |                  |
| Reload .vimrc                                    | `<leader>rv`          | n    |                  |
|                                                                                                    |
| __CtrlP__                                                                                          |
|                                                                                                    |
| - Shortcut                                                                                         |
| :CtrlPMRUFiles                                   | `<c-d>`               | n    |                  |
| :CtrlP                                           | `<c-l>`               | n    |                  |
| :CtrlPFunky                                      | `<c-g>`               | n    |                  |
|                                                                                                    |
| - Usage                                                                                            |
| Move down                                        | `S`                   |      | CtrlP            |
| Move up                                          | `R`                   |      | CtrlP            |
| Open file in a new tab                           | `<c-t>`               |      | CtrlP            |
| Open file in verticale split                     | `<c-x>`               |      | CtrlP            |
| Open file in horizontale split                   | `<c-v>`               |      | CtrlP            |
| Toggle search by name                            | `<c-j>`               |      | CtrlP            |
| Toggle type                                      | `<c-f>`               |      | CtrlP            |
|                                                                                                    |
| __NERDTree__                                                                                       |
|                                                                                                    |
| Toggle Tree                                      | `<f12>`               | n    |                  |
| Move down                                        | `s`                   |      | Tree Node        |
| Move up                                          | `r`                   |      | Tree Node        |
| Open files, directories and bookmarks            | `q`                   |      | Tree Node        |
| Open a node in a new tab                         | `v`                   |      | Tree Node        |
| Open a node in verticale split                   | `d`                   |      | Tree Node        |
| Open a node in horizontale split                 | `i`                   |      | Tree Node        |
| Change Root                                      | `C`                   |      | Tree Node        |
| Tree menu                                        | `m`                   |      | Tree Node        |
| Jump to the root node                            | `P`                   |      | Tree Node        |
| Jump to current nodes parent                     | `p`                   |      | Tree Node        |
|                                                                                                    |
| __Search__                                                                                         |
|                                                                                                    |
| Find word in file                                | `/`                   | n    |                  |
| Find this word in project                        | `<leader>f`           | n    |                  |
| Find word in project                             | `<leader>z`           | n    |                  |
| Open result in new tab                           | `<leader>o`           | n    |                  |
| Next occurence in file                           | `*`                   | n    |                  |
| Clear highlights                                 | `<leader>l`           | n    |                  |
| Navigate in quickfix - next                      | `:cn`                 | n    |                  |
| Navigate in quickfix - previous                  | `:cp`                 | n    |                  |
|                                                                                                    |
| __Snippet__                                                                                        |
|                                                                                                    |
| Select next proposal in menu                     | `<c-n>`               | i    | complete menu    |
| Select snippet                                   | `<tab>`               | i    | complete menu    |
| Next placeholder                                 | `<c-j>`               | i    | complete menu    |
| Previous placeholder                             | `<c-z>`               | i    | complete menu    |
|                                                                                                    |
| __Autoindent__                                                                                     |
|                                                                                                    |
| Start indentation                                | `==`                  | n    |                  |
|                                                                                                    |
| __Align__                                                                                          |
|                                                                                                    |
| Start interactive alignment                      | `EasyAlign`           | v    | selection        |
| Align next paragraph on =                        | `<leader>a=`          | n    |                  |
| Align next paragraph on :                        | `<leader>a:`          | n    |                  |
| Align next paragraph on delimiter _x_            | `<leader>ax`          | n    |                  |
| Right align selection on =                       | `<leader>a=`          | v    |                  |
| Right align selection on :                       | `<leader>a:`          | v    |                  |
| Right align selection on _x_                     | `<leader>ax`          | v    |                  |
| Documentation                                    | `:help :EasyAlign`    |      |                  |
|                                                                                                    |
| __Format__                                                                                         |
|                                                                                                    |
| Format the file                                  | `<c-f>`               | n    | js,json,html,css |
| Format the selection                             | `<c-f>`               | n    | js,json,html,css |
|                                                                                                    |
| __Multiple Cursor__                                                                                |
|                                                                                                    |
| Insert multiple line                             | `<c-b>I<text><esc>`   | n    |                  |
| Next                                             | `<c-m>`               | n    |                  |
| Skip                                             | `<c-x>`               | n    |                  |
| Previous                                         | `<c-z>`               | n    |                  |
| Exit                                             | `<esc>`               | n    |                  |
| Replace                                          | `c`                   |      | multiple cursor  |
| Remove                                           | `x`                   |      | multiple cursor  |
| Insert                                           | `vi`                  |      | multiple cursor  |
|                                                                                                    |
| __Git__                                                                                            |
|                                                                                                    |
| git diff                                         | `:Gdiff`              | n    |                  |
| git status                                       | `:Gstatus`            | n    |                  |
| git commit                                       | `:Gcommit`            | n    |                  |
| git blame                                        | `:Gblame`             | n    |                  |
| git rm                                           | `:Gremove`            | n    |                  |
|                                                                                                    |
| __AutoCompletion html__                                                                            |
|                                                                                                    |
| Tranform text to tag (div to <div>)              | `<c-y>,`              | n    |                  |


# Tmux

|                                                  | Command               |      |                  |
|--------------------------------------------------|-----------------------|:----:|------------------|
| __Basics__                                                                                         |
|                                                                                                    |
| Change next window                               | `<c-b>n`              |      |                  |
| Change previous window                           | `<c-b>p`              |      |                  |
| Change pane                                      | `<c-b>up`             |      |                  |
| Active scroll                                    | `<c-b>pgUp`           |      |                  |
| Kill the current pane                            | `<c-b>x`              |      |                  |
| Create another window                            | `<c-b>c`              |      |                  |
| List sessions                                    | `<c-b>s`              |      |                  |
| List windows                                     | `<c-b>w`              |      |                  |
| Split window/pane horizontally                   | `<c-b>"`              |      |                  |
| Split window/pane vertically                     | `<c-b>%`              |      |                  |
