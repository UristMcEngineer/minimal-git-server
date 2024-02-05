#!/bin/bash

#HELP list all available repositories

#shellcheck disable=SC1091
. /srv/env


for repo in $(find "$REPO_ROOT/$USER" -name "config" | sort)
do
    folder=$(dirname "$repo")
    repo_name=${folder#"$REPO_ROOT/$USER/"}
    echo "$repo_name"
done