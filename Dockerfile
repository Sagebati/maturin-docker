FROM liuchong/rustup:nightly
RUN apt-get update && apt-get install python3-pip libffi-dev -y
RUN pip3 install pyo3-pack
RUN pip3 install cffi
