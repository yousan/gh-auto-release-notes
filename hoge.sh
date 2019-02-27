#!/usr/bin/env bash


curl --data  \
'{"tag_name": "v'"$VERSION_ENV"'","target_commitish": "master","name": "v'"$VERSION_ENV"'","body": "Release of version '"$VERSION_ENV"'","draft": false,"prerelease": false}' \
 https://api.github.com/repos/TheDesignium/hitachi-ap-front/releases\?access_token\="$GITHUB_ACCESS_TOKEN"

VERSION_ENV
curl --data  \
'{"tag_name": "v'"$VERSION_ENV"'","target_commitish": "master","name": "v'"$VERSION_ENV"'","body": "Release of version '"$VERSION_ENV"'","draft": false,"prerelease": false}' \
 https://api.github.com/repos/yousan/gh-auto-release-notes/releases\?access_token\="$GITHUB_ACCESS_TOKEN"

curl https://api.github.com/repos/yousan/gh-auto-release-notes/releases
