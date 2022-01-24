# Pull existing image
FROM rubydata/minimal-notebook:b8b5f09385fe

# Copy only notebook files
COPY iruby_notebook/ ${HOME}