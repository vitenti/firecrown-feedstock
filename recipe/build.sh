#!/usr/bin/env bash
set -euxo pipefail

# ${PYTHON} is exported by conda-build into the build environment, so the
# recipe does not need the {{ PYTHON }} jinja variable, which is only defined
# for some rendering passes of a multi-output recipe.
"${PYTHON}" -m pip install . -vv --no-deps --no-build-isolation
