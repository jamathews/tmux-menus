#!/usr/bin/env bash
#
#   Copyright (c) 2021: Jacob.Lundqvist@gmail.com
#   License: MIT
#
#   Part of https://github.com/jaclu/tmux-menus
#
#   Version: 1.0 2021-11-06-
#       Initial release
#

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


tmux display-menu \
    -T "#[align=centre] Advanced options "  \
    -x C -y C \
    \
    "Back to main-menu"  Left  "run-shell $CURRENT_DIR/main.sh"  \
    "" \
    "<P> Show messages"        \~     show-messages        \
    "<P> Customize options"     C     "customize-mode -Z"  \
    "<P> Describe key binding"  /     "command-prompt -k -p key \"list-keys -1N \\"%%%\\"\""  \
    "<P> Prompt for a command"  :     command-prompt  \
    "" \
    "Help"  h  "run-shell \"$CURRENT_DIR/help.sh $CURRENT_DIR/advanced.sh\""

exit 0
