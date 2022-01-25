# alias g=gradle

function g() {
    unset JENKINS_URL
    if [ -f gradlew ]; then
        ./gradlew $@
    else
        gradle $@
    fi
}

function ginit-enable() {
    mv ~/.gradle/init.d.bak ~/.gradle/init.d
}

function ginit-disable() {
    mv ~/.gradle/init.d ~/.gradle/init.d.bak
}
