FROM rust:1.31.0

LABEL "com.github.actions.name"="release"
LABEL "com.github.actions.description"="Cargo release"
LABEL "com.github.actions.icon"="play-circle"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/icepuma/rust-github-actions"
LABEL "homepage"="https://github.com/icepuma/rust-github-actions"
LABEL "maintainer"="Stefan Ruzitschka <icepuma@godda.mn>"

RUN apt update && apt install cmake -y && rm -rf /var/lib/apt/lists/*
RUN cargo install release

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
