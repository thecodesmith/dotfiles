# function brewInstallAndSave() {
#     local brewfileCmd
#     local package=
#     if [[ "$*" == *" --cask"* ]]; then
#         brewfileCmd="cask $package"
#     else
#         echo "NO"
#         brewfileCmd="brew $package"
#     fi
#     $@
# }

# function brew() {
#     case "$1" in
#         install) $@ &&  ;;
#         *) ;;
#     esac
# }
