FROM continuumio/anaconda3
# Configure jupyterlab
RUN conda install -c conda-forge jupyterlab
RUN conda install -c conda-forge jupyterlab-git
RUN conda install -c conda-forge jupyter_contrib_nbextensions
RUN conda install -c conda-forge jupyter_nbextensions_configurator
RUN jupyter contrib nbextension install --user

# Install libraries
RUN conda install matplotlib
RUN conda install networkx
RUN conda install scipy
RUN conda install numpy

RUN mkdir /opt/notebooks

WORKDIR /opt/notebooks

RUN mkdir network-science
RUN cd network-science

WORKDIR /opt/notebooks/network-science

CMD ["/bin/bash", "-c", "jupyter lab --ip=0.0.0.0 --NotebookApp.token='' --NotebookApp.password='' --port=8888 --no-browser --allow-root"]
