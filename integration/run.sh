#!/bin/bash -e

python3 -m pip install -e . --no-cache-dir

while true; do
    if curl -s http://lila:9663 >/dev/null; then
        break
    fi
    echo "⌛ Waiting for lila to start..."
    sleep 1
done

python3 integration/sample.py
