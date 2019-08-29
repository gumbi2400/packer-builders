# Packer Builders

This repo contains basic builders for Packer. Currently This only contains Hetzner Cloud builders as this is where I am currently hosting my personal infrastructure. However more may potentially be added in the future.

## Branching
In general the `master` branch should reflect what's actually being used at the moment. While develop is for, well, development. Aside from the first commit, I intend to use feature branches based off development and then merge into `develop` then `master` once everything is tested and working.

## Future work
When I get time, I plan on setting up some basic automated testing. I also want to be able to trigger builds as needed and run terraform to deploy into my own infrastructure. 