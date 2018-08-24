# Resume

Plugin is used for create and use an image with Terraform using Packer in Drone Pipeline

## How to Use
```
pipeline:

  packer:
    image: josebovet/drone-packer
    key: image_id
    filename: terraform.tfvars
    secrets:
      - source: arm_subscription_id
      ...
```
## Owner Team

Anonymous team
