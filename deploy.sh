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

# 현재 날짜와 시간을 한국어 형식으로 생성
CURRENT_DATE=$(date '+%Y년 %m월 %d일 %H:%M')
COMMIT_MESSAGE="${1:-$CURRENT_DATE 콘텐츠 업데이트}"

git add .
git commit -m "$COMMIT_MESSAGE"

echo "🚀 Pushing to v4 branch..."
git push origin v4

echo "🎉 Deployment complete!"
