brew install gpg2 gnupg pinentry-mac

echo 'gpg has been installed'
echo 'set up existing gpg keys using these steps:'
echo '  1. export keys from original system'
echo '     gpg --list-secret-keys'
echo '     gpg --export <id> > ~/.gnupg/pub.key'
echo '     gpg --export-secret-key <id> > ~/.gnupg/pri.key'
echo '  2. copy keys and import on new system'
echo '     gpg --import pub.key'
echo '     gpg --import pri.key'
