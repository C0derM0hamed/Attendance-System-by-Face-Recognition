#!/bin/bash

echo "Fetching all remotes..."

git fetch frontend-origin
git fetch backend-origin
git fetch face-api-origin

echo "Pulling updates for frontend/"
git subtree pull --prefix=frontend frontend-origin master --squash

echo "Pulling updates for backend/"
git subtree pull --prefix=backend backend-origin master --squash

echo "Pulling updates for face-api/"
git subtree pull --prefix=face-api face-api-origin main --squash

echo "Pushing everything to origin..."
git push

echo "All folders updated and pushed!"
