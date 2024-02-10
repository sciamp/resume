FROM nixos/nix

WORKDIR /build

COPY shell.nix /build/
COPY main.tex /build/

RUN nix-shell

ENTRYPOINT ["pdflatex", "main.tex"]