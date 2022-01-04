# Preperation according to https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html
RUN pip install --no-cache-dir notebook
RUN pip install --no-cache-dir jupyterhub

FROM minad/sciruby-notebooks:601f3e30cd43

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

# sciruby-notebooks from https://github.com/SciRuby/sciruby-notebooks/blob/master/Dockerfile
# Add ecell4 dependencies
RUN apt-get update
RUN apt-get install -y build-essential ruby ruby-dev libzmq3 libzmq3-dev gnuplot-nox libgsl0-dev libtool autoconf automake zlib1g-dev libsqlite3-dev libmagick++-dev imagemagick libatlas-base-dev && apt-get clean
RUN ln -s /usr/bin/libtoolize /usr/bin/libtool # See https://github.com/zeromq/libzmq/issues/1385

RUN gem update --no-document --system && gem install --no-document sciruby-full

USER ${NB_USER}

RUN iruby register