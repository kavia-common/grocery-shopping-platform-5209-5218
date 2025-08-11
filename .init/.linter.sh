#!/bin/bash
cd /home/kavia/workspace/code-generation/grocery-shopping-platform-5209-5218/grocery_angular_frontend
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

