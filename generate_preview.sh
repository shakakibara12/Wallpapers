#!/bin/zsh

# NOTE: this script should be run from the wallpapers root directory.

note="""
## I did not create any of these wallpapers.
"""

generate_file() {
    echo "<!-- markdownlint-disable MD026 -->"
    echo "# wallpapers"
    echo "$note"

    for filename (*.jpg ; *.png); do
        printf "\n## %s\n\n![%s](%s)\n" "$filename" "$filename" "$filename"
    done
}

rm README.md ; generate_file >>README.md

# useful for inspecting readme after creation e.g. $ ./generate_preview.sh vim
[ -n "$1" ] && $1 README.md

exit 0
