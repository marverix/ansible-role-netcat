#!/bin/sh
molecule --base-config molecule/base.yml test --scenario-name default
molecule --base-config molecule/base.yml test --scenario-name cryptcat
