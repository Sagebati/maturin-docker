FROM liuchong/rustup:nightly
RUN apt install python-pip
RUN pip install pyo3-pack