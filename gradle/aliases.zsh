# alias g=gradle

function g() {
    if [ -f gradlew ]; then
        ./gradlew $@
    else
        gradle $@
    fi
}
