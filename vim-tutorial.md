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
| Cancel                                           | `u`                   | n    |                  |
| Save                                             | `:w`                  | n    |                  |
| Quit                                             | `:q`                  | n    |                  |
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
| __Align__                                                                                          |
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
| Format the file                                  | `<c-f>`               | n    | js,json,html,css |
| Format the selection                             | `<c-f>`               | n    | js,json,html,css |
|                                                                                                    |
| __Multiple Cursor__                                                                                |
| Next                                             | `<c-m>`               | n    |                  |
| Skip                                             | `<c-x>`               | n    |                  |
| Previous                                         | `<c-z>`               | n    |                  |
| Exit                                             | `<esc>`               | n    |                  |
| Multiple cursor insert                           | `i`                   |      | multiple cursor  |
| Multiple cursor remove                           | `x`                   |      | multiple cursor  |
|                                                                                                    |
| __AutoCompletion__                                                                                 |
| Select next proposal in menu                     | `<tab>`               | i    | complete menu    |
| Select previous proposal in menu                 | `<shift><tab>`        | i    | complete menu    |
|                                                                                                    |
| __Git__                                                                                            |
| git diff                                         | `:Gdiff`              | n    |                  |
| git status                                       | `:Gstatus`            | n    |                  |
| git commit                                       | `:Gcommit`            | n    |                  |
| git blame                                        | `:Gblame`             | n    |                  |
| git rm                                           | `:Gremove`            | n    |                  |
|                                                                                                    |
| __Search__                                                                                         |
| clear highlights                                 | `<c-l>`               | n    |                  |
|                                                                                                    |
|                                                                                                    |
