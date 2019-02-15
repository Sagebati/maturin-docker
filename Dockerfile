FROM liuchong/rustup:nightly
RUN apt install python-pip -y
RUN pip install pyo3-pack