#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_credential_steal info
PYTHONPATH=src python -m gbt_credential_steal check --payload '{}'
PYTHONPATH=src python -m gbt_credential_steal run   --payload '{}'
