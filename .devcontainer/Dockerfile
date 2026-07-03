FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
        archiso \
        base-devel \
        git \
        nasm \
        qemu-full \
        vim \
        nano \
        sudo \
        openssh \
        which \
        curl \
        wget

RUN useradd -m -G wheel -s /bin/bash builder && \
    echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

WORKDIR /workspaces

CMD ["/bin/bash"]
