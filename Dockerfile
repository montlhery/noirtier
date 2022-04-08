FROM python:3.10-slim
RUN apt update && apt install --yes ffmpeg git imagemagick
RUN pip install git+https://github.com/polygon/spectrum_painter
ADD noirtier.bash /opt/noirtier
ENTRYPOINT ["/bin/bash", "/opt/noirtier"]
