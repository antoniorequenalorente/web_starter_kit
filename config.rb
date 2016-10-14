# Require any additional compass plugins here.
# -----------------------------------------------------------------------------


# Set cache path
# -----------------------------------------------------------------------------
cache_path = 'cache/sass'


# Set this to the root of your project when deployed:
# -----------------------------------------------------------------------------

http_path                  = "/"
css_dir                    = "public/css"
sass_dir                   = "assets/scss"
images_dir                 = "public/images"
javascripts_dir            = "public/js"
generated_images_dir       = 'public/images'
http_generated_images_path = '../images'
# svg_dir = "assets/svg"
# fonts_dir = "assets/fonts"
# docs_dir = "assets/docs"
# plugins_dir = "assets/plugins"



# Output style and comments
# -----------------------------------------------------------------------------

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
# Over-ride with force compile to change output style with: compass compile --output-style compressed --force
output_style = :expanded


# Remove SASS/Compass relative comments.
line_comments = false



# SASS core
# -----------------------------------------------------------------------------

# Chrome needs a precision of 8 to round properly
Sass::Script::Number.precision = 8



# Stuff we don't really need below
# -----------------------------------------------------------------------------

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass src scss && rm -rf sass && mv scss sass
