FROM texlive/texlive

LABEL maintainer="Guillermo Gutiérrez <xiterrex@gmail.com>"

ARG DEBIAN_FRONTEND=noninteractive
ARG LANG=C
ARG LC_ALL=C
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential xsltproc inkscape wget curl unzip latexmk unar && \
    curl -L "https://github.com/hbin/top-programming-fonts/raw/master/install.sh" | /bin/bash && \
    wget "https://dl.dafont.com/dl/?f=apple_garamond" -O apple_garamond.zip && \
    unzip -o apple_garamond.zip -d ${HOME}/.fonts && \
    rm -f apple_garamond.zip && \
    wget "https://www.1001fonts.com/download/tex-gyre-pagella.zip" && \
    unzip -o tex-gyre-pagella.zip -d ${HOME}/.fonts && \
    rm -f tex-gyre-pagella.zip && \
    wget "https://www.freebestfonts.com/download?fn=3993" -O GillSans.zip && \
    unzip -o GillSans.zip -d ${HOME}/.fonts && \
    rm -f GillSans.zip

WORKDIR /project
CMD ["latexmk"]
