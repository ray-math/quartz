#!/bin/bash
# Quartz deployment script

echo "🔨 Building Quartz..."
npx quartz build

if [ $? -ne 0 ]; then
    echo "❌ Build failed!"
    exit 1
fi

echo "✅ Build completed!"
echo "📝 Committing changes..."

git add .
git commit -m "${1:-Update content and rebuild}"

echo "🚀 Pushing to v4 branch..."
git push origin v4

echo "🎉 Deployment complete!"
