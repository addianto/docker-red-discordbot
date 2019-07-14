FROM    ubuntu:18.04
RUN     apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        default-jre \
        git \
        libffi-dev \
        libssl-dev \
        python3-pip \
        python3-setuptools \
        python3.7 \
        python3.7-dev \
        python3.7-venv \
        unzip
RUN     update-alternatives --install \
        /usr/bin/python python /usr/bin/python3.7 0
RUN     python -m pip install --no-cache-dir --upgrade pip
RUN     groupadd redbot && useradd -m -g redbot redbot
USER    redbot
ENV     PATH /home/redbot/.local/bin:$PATH
WORKDIR /home/redbot
RUN     python -m pip install --no-cache-dir --user Red-DiscordBot[mongo]
VOLUME  /home/redbot
CMD     ["/bin/bash"]

LABEL   org.label-schema.name="docker-red-discordbot" \
        org.label-schema.description="Red Discord Bot (V3) packaged as container image" \
        org.label-schema.version="0.2.0" \
        org.label-schema.vcs-url="https://github.com/addianto/docker-red-discordbot" \
        org.label-schema.vendor="@addianto" \
        org.label-schema.schema-version="1.0.0-rc1"