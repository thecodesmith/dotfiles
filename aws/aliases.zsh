#!/usr/bin/env zsh

function sam-console() {
    local service="$1"

    if ! [ -f samconfig.toml ]; then
        echo 'Error: No samconfig.toml file found in the current directory'
        exit 1
    fi

    stack_name="$(grep stack_name samconfig.toml | awk '{print $3}' | tr -d '"')"

    if [ -z "$stack_name" ]; then
        echo 'Error: No stack_name found in samconfig.toml'
        exit 1
    fi

    case $service in
        stepfunctions) open "https://console.aws.amazon.com/states/home?region=us-east-1#/statemachines/view/arn:aws:states:us-east-1:136813947591:stateMachine:$stack_name" ;;
        *) echo "Error: Unknown service '$service'" && exit 1
    esac
}
