function nvm_update() {
    export NVM_CURRENT=$(nvm current | cut -b 2-) \
        && NVM_MAIN=$(echo $NVM_CURRENT | cut -d "." -f 1) \
        && nvm install $NVM_MAIN --reinstall-packages-from=$NVM_CURRENT \
        && nvm uninstall $NVM_CURRENT \
        && export NVM_CURRENT= \
        && export NVM_MAIN=
}