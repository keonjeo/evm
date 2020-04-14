# evm

```
                                   ____
       ,---,.                    ,'  , `.
     ,'  .' |       ,---.     ,-+-,.' _ |
   ,---.'   |      /__./|  ,-+-. ;   , ||
   |   |   .' ,---.;  ; | ,--.'|'   |  ;|
   :   :  |-,/___/ \  | ||   |  ,', |  ':
   :   |  ;/|\   ;  \ ' ||   | /  | |  ||
   |   :   .' \   \  \: |'   | :  | :  |,
   |   |  |-,  ;   \  ' .;   . |  ; |--'
   '   :  ;/|   \   \   '|   : |  | ,
   |   |    \    \   `  ;|   : '  |/
   |   :   .'     :   \ |;   | |`-'
   |   | ,'        '---" |   ;/     by keonjeo  
   `----'

```

About
========
EVM is a version manager for erlang, which is inspired by rvm, nvm, gvm and evm tool.

Features
========
* Install/Uninstall Erlang versions with `evm install [tag]` where tag is "22.3.2"
* List latest release tags with `evm listall`.

Installing Evm
==========

To install:

    bash < <(curl -s -S -L https://raw.githubusercontent.com/keonjeo/evm/master/evm-installer)

Or if you are using zsh just change `bash` with `zsh`

Installing Erlang
=============
    evm install 22.3.2
    evm default 22.3.2
    evm use 22.3.2

Once this is done Erlang will be in the path and ready to use.
