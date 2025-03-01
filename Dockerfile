FROM swift:6.0.3 as builder

RUN apt-get -qq update && apt-get install -y \
  libssl-dev zlib1g-dev \
  && rm -r /var/lib/apt/lists/*

WORKDIR /BigNum
COPY . .
RUN swift test
