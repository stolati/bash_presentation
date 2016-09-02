#!/usr/bin/env bash
set -eux


action_parameter="${1:-help}"


case "$action_parameter" in
  1)
    echo "Execution test false"
    false
    ;;
  2)
    echo "With grep"
    grep "mick""_is_the_best" "$0"
    ;;
  3)
    echo "And without test"
    set +e
    false # this is a failling command
    grep "mick""_is_the_best" "$0" # this too
    ;;
  4)
    echo "If the false is expected"
    grep "mick""_is_the_best" "$0" || true
    ;;
  5)
    echo "Using existing variable"
    echo "Your shell is $SHELL"
    echo "Using non-existent variable"
    echo "$MY_SUPER_VARIABLE"
    ;;
  6)
    set +u
    echo "Using non-existent variable"
    echo "launching command with param :" $MY_SUPER_VARIABLE
    ;;
  7)
    echo "Using non-existent variable"
    echo "${MY_SUPER_VARIABLE:-default value}"
    echo "${MY_SUPER_VARIABLE:-$(pwd)}"
    ;;
  8)
    echo "-x is handy"
    current_path="$(cd "$(dirname "$0")" ; pwd)"
    ;;
  9)
    # Putting logs into a specific file
    exec 2> "${0}.logs"
    MY_SUPER_VARIABLE="${MY_SUPER_VARIABLE:-default value}"
    FOUND_IT=false
    if grep "mick""_is_the_best" "$0" ; then # false result, but inside a test command
       FOUND_IT=true
    fi
    $FOUND_IT || pwd  # we can use the boolean as value
    echo "You should open the file ${0}.log" 
    ;;
  *)
    set +x # Avoid too much echo
    echo "Execute :" 
    for i in $(seq 1 9) ; do
       echo " $0 $i"
    done
    exit 1
  ;;
esac

# cleaner output
set +x

{
	echo "###############"
	echo "Script ended OK"
	echo "###############"
} # group so the exit is whole



