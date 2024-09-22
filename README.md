# AWS AppRunner Deep Dive

![alt text](./docs/diagrams.drawio.svg)

## Requirements
* Python version 3.12.3
* docker version 27.2.1
* docker-compose version v2.29.3

## Run Application Locally
```sh
# Give execute permision to setup.sh
chmod +x setup.sh
```

```sh
# Give execute permision to destroy.sh
chmod +x destroy.sh
```

```sh
# Run the setup.sh script to run the application (both database and webapp)
./setup.sh
```

```sh
# Destroy the application (both database and webapp)
./destroy.sh
```

## AppRunner useful Docs

* Documentation: https://docs.aws.amazon.com/apprunner/

* Pricing: https://aws.amazon.com/apprunner/pricing/