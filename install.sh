#!/bin/bash

echo "Downloading song..."
curl -s --location "https://raw.github.com/eldirty/push-it/master/push-it.mp3" > ~/Music/push-it.mp3

echo "Applying commit-msg hook..."
curl -s --location "https://raw.github.com/eldirty/push-it/master/commit-msg" > .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg

echo "Applying pre-push hook..."
curl -s --location "https://raw.github.com/eldirty/push-it/master/pre-push" > .git/hooks/pre-push
chmod +x .git/hooks/pre-push

echo "Done."
