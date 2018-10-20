#!/bin/sh

# DO NOT USE. Use fontconfig instead #
## Point to fonts directory. (These should have a .uuid file. If not, cd into them and run `mkfontdir`)
#xset +fp $HOME/.local/share/fonts/OTF && xset +fp $HOME/.local/share/fonts/TTF

# Font instructions
# 1. Install fonts to ~/.local/share/fonts/{OTF,TTF}
# 2. Add font family to ~/.config/fontconfig/fonts.conf
# 3. Family name can be found using `fc-query <font_to_test.ttf/otf>`
# 4. Verify that correct font is being used with `fc-match <font_family>` (e.g. monospace, serif, sans-serif etc.)


# Load X settings
xrdb $HOME/.Xresources

# Set cursor repeat rate to 50 (after delay of 500ms. Run `xset q` for more)
xset r rate 200 50

# Start i3 when X is launched
exec i3

