FROM mcr.microsoft.com/dotnet/runtime
ARG TARGETPLATFORM

RUN apt update && apt install -y aria2 ffmpeg wget bash && rm -rf /var/lib/apt/lists/*
COPY ${TARGETPLATFORM} /usr/bin/BBDown

ENTRYPOINT ["/usr/bin/BBDown", "--work-dir", "/workspace"]
