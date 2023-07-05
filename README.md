# DJI Onboard SDK in Docker

*without OpenCV

Test on the **DJI Matrice 300 RTK**.

## Build

### Clone with OnBoard SDK repository 

```bash
git clone --recursive https://github.com/NootNook/osdk-dji-docker.git
```

### Clone without OnBoard SDK repository

**Add your OnBoard SDK repo in the main root of this repo**

```bash
git clone https://github.com/NootNook/osdk-dji-docker.git
```

### Init container Docker

```bash
./init_docker.sh
```

## Configuration

Specfic the serial port number in [run_docker.sh](run_docker.sh) (by default `/dev/ttyUSB0`).
```bash
...
--device="/dev/ttyUSB0" \
...
```

## Run

```bash
./run_docker.sh
```