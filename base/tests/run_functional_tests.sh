#!/bin/bash

declare PROJECT=$1

set -e

export XDG_CONFIG_HOME=/src/oci_env/base/tests/

pytest -r sx --color=yes --pyargs $PROJECT.tests.functional ${@:2}
