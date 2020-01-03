IAC for AMI automation in AWS
This repository contains code for AMI image build automation in AWS

### Repository structure:
 ./custom_configs - agents, components configuration files

 ./custom_scripts - custom shell scripts

 ./packer_templates - packer templates

 ./provisioning_scripts - scripts, used to deploy packages and apply configuration within AMI

 ./readme.md - this file

It is expected, builder is triggered on a machine, which have permissions (either via IAM role, either via other authentication mechanisms) to manage EC2 instances, keypairs, etc... Full list of permissions required and example policy code can be found on Packer documentation page at https://www.packer.io/docs/builders/amazon.html


### Triggering automation
Scripts collection has been created to be part of automation, however, for testing purposes it can be starte manually.

Validate packer template:
```
packer validate --var "target_region=***" ./packer_templates/apache_brick_template.json
or
packer validate --var "target_region=***" ./packer_templates/generic_brick_template.json
where *** is region code name

```

Run packer build:
```
packer validate --var "target_region=***" ./packer_templates/apache_brick_template.json
or
packer validate --var "target_region=***" ./packer_templates/generic_brick_template.json
where *** is region code name
```

### Documentation
Packer - https://www.packer.io/intro/getting-started/build-image.html
