"
" Vim Configuration
"
" author: Adrien Bouttier <hibigbob@gmail.com>
" source: https://github.com/hibigbob/bepo-vim-config
"
" You won't find any configuration here directly,
" please look at files under the config folder for global config
" and under plugins for plugins configuration


filetype plugin on

let s:vimDir = $HOME.'/.vim'

let g:hardcoreMode = 0

let s:pluginDir  = s:vimDir.'/plugins/plugged'
let s:pluginDef  = s:vimDir.'/plugins/def.vim'
let s:pluginConf = s:vimDir.'/plugins/config.vim'

let s:configSetting = s:vimDir.'/config/setting.vim'
let s:configMapping = s:vimDir.'/config/mapping.vim'
let s:configAutocmd  = s:vimDir.'/config/autocmd.vim'

let s:userConfig  = s:vimDir.'/local.vim'

if !isdirectory(s:pluginDir)

    " Welcome message when plugins are not yet installed

    echom " "
    echom "Welcome to Vim"
    echom " "
    echom "Checking dependencies :"
    if !executable('node') || !executable('npm')
        echom " [ERR] node.js and npm are required, please install them before continuing."
        echom " "
    else
        echom " - nodejs   : ok"
        echom " - npm      : ok"
        echom " - eslint   : " . (executable('eslint')   ? "ok" : "no (optional)")
        echom " - jsonlint : " . (executable('jsonlint') ? "ok" : "no (optional)")
        echom " - csslint  : " . (executable('csslint')  ? "ok" : "no (optional)")
        echom " done."
        echom "We are going to install the plugins : "
        echom " 1. take a coffee"
        echom " 2. reload vim"
        echom " 3. Envoy"
        echom " "

        exec ":source ".s:pluginDef

    "Install plugins on first run
    autocmd VimEnter * PlugInstall
    endif
else

    " Loads the global config, mapping and settings
    exec ":source ".s:configSetting
    exec ":source ".s:configMapping
    exec ":source ".s:configAutocmd

    " Loads plugins def and config
    exec ":source ".s:pluginDef
    exec ":source ".s:pluginConf

    " user configuration
    if filereadable(s:userConfig)
        exec ":source ".s:userConfig
    endif

endif
