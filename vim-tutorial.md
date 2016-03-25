### Vim

|                                   | Command               | Mode | Context          |
|-----------------------------------|-----------------------|:----:|------------------|
| __Basics__                                                                          |
| Insert                            | `i`                   | n    |                  |
| Cancel                            | `u`                   | n    |                  |
| Save                              | `:w`                  | n    |                  |
|                                                                                     |
| __Copy__                                                                            |
| Line                              | `yy`                  | n    |                  |
| Word                              | `yw`                  | n    |                  |
| Beginning of the line             | `y0`                  | n    |                  |
| End of line                       | `y$`                  | n    |                  |







| Install Plugins                                  | `:PlugInstall`        | n    |                  |
| __Plugins__                                                                                        |
| Install Plugins                                  | `:PlugInstall`        | n    |                  |
| Update Plugins                                   | `:PlugUpdate`         | n    |                  |
|                                                                                                    |
| __Config__                                                                                         |
| Edit .vimrc                                      | `<leader>e`           | n    |                  |
| Reload .vimrc                                    | `<leader>s`           | n    |                  |
|                                                                                                    |
| __File Tree (NERDTree)__                                                                           |
| Toggle Tree                                      | `<c-n>`               | n    |                  |
| Open a node in a new tab                         | `t`                   |      | Tree Node        |
| Change Root                                      | `C`                   |      | Tree Node        |
| Tree menu                                        | `m`                   |      | Tree Node        |
| Add a file                                       | `a`                   |      | Tree Menu        |
| Delete a file                                    | `d`                   |      | Tree Menu        |
| Move a file                                      | `m`                   |      | Tree Menu        |
| Copy a file                                      | `c`                   |      | Tree Menu        |
| Move to left tab                                 | `<s-left>`            | n    |                  |
| Move to right tab                                | `<s-right>`           | n    |                  |
| Change window (ie. tree to tab)                  | `<c-w><c-w>`          |      |                  |
| Help                                             | `?`                   |      | Tree             |
| Documentation                                    | `:help NERDTree`      |      |                  |
|                                                                                                    |
| __Comment__                                                                                        |
| Toggle comments                                  | `<c-/>`               | nv   |                  |
| Comments                                         | `<leader>cc`          | nv   |                  |
| Sexy Comments                                    | `<leader>cs`          | nv   |                  |
| UnComments                                       | `<leader>cu`          | nv   |                  |
| Yank and Comments                                | `<leader>cy`          | nv   |                  |
| Documentation                                    | `:help NERDCommenter` |      |                  |
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
| Start multiple cursor                            | `<c-m>`               | v    | Visual Bloc      |
| Multiple cursor insert                           | `i`                   |      | multiple cursor  |
| Multiple cursor remove                           | `x`                   |      | multiple cursor  |
| Leave multiple cursor                            | `<esc>`               |      | multiple cursor  |
|                                                                                                    |
| __Paste__                                                                                          |
| cycle backward through your history of yanks     | `<leader>p`           | nv   | after paste `p`  |
| cycle forward through your history of yanks      | `<leader>P`           | nv   | after paste `p`  |
|                                                                                                    |
| __AutoCompletion__                                                                                 |
| Select next proposal in menu                     | `<tab>`               | i    | complete menu    |
| Select previous proposal in menu                 | `<shift><tab>`        | i    | complete menu    |
|                                                                                                    |
| __Syntax checking__                                                                                |
| Checkers infos                                   | `:SyntasticInfo`      | n    |                  |
| Check                                            | `:SyntasticCheck`     | n    |                  |
| Toggle check                                     | `:SyntasticToggleMode`| n    |                  |
| Error window                                     | `:Errors`             | n    |                  |
| Jump next error                                  | `:lnext`              | n    |                  |
| Jump previous error                              | `:lprev`              | n    |                  |
|                                                                                                    |
| __JavaScript__                                                                                     |
| Jump to the definition                           | `:TernDef`            | n    | under cursor     |
| Look up the documentation                        | `:TernDoc`            | n    | under cursor     |
| Find the type                                    | `:TernType`           | n    | under cursor     |
| Show all references to the variable or prop      | `:TernRefs`           | n    | under cursor     |
| Rename the variable                              | `:TernRename`         | n    | under cursor     |
| jump to the source of a `require`                | `gf`                  | n    | node.js, cursor  |
| Edit the main file of a CJS module               | `:Nedit module`       | n    | node.js          |
| Edit a file of a CJS module                      | `:Nedit module/foo.js`| n    | node.js          |
| Edit projects main (from package.json)           | `:Nedit`              | n    | node.js          |
|                                                                                                    |
| __Git__                                                                                            |
| git diff                                         | `:Gdiff`              | n    |                  |
| git status                                       | `:Gstatus`            | n    |                  |
| git commit                                       | `:Gcommit`            | n    |                  |
| git blame                                        | `:Gblame`             | n    |                  |
| git mv                                           | `:Gmove`              | n    |                  |
| git rm                                           | `:Gremove`            | n    |                  |
| Open the current file in Github                  | `:Gbrowse`            | n    |                  |
|                                                                                                    |
| __Spell Check__                                                                                    |
| Enable checking                                  | `set spell`            | n   |                  |
| move to the next misspelled word                 | `]s`                   | n   |                  |
| move to the previous misspelled word             | `[s`                   | n   |                  |
| add a word to the dictionary                     | `zg`                   | n   |                  |
| undo the addition of a word to the dictionary    | `zug`                  | n   |                  |
| view spelling suggestions for a misspelled word  | `z=`                   | n   |                  |
|                                                                                                    |
| __Search__                                                                                         |
| clear highlights                                 | `<c-l>`               | n    |                  |
|                                                                                                    |
| __Editing__                                                                                        |
| Move line up                                     | `<leader>-`           | nv   |                  |
| Move line down                                   | `<leader>_`           | nv   |                  |
|                                                                                                    |
| _Next sections to come soon_                                                                       |
|                                                                                                    |
