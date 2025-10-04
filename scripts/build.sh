#!/bin/bash
# Clean install to avoid npm optional dependencies issues
rm -rf node_modules package-lock.json
npm install --prefer-online --no-optional --legacy-peer-deps
npm run build