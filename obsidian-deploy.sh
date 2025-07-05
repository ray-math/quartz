#!/bin/bash

# 옵시디언깃에서 호출할 수 있는 자동 배포 스크립트
QUARTZ_DIR="/Users/ray/Project/quartz"

echo "🚀 Starting auto-deploy from Obsidian Git..."

cd "$QUARTZ_DIR"

# 빌드
echo "🔨 Building Quartz..."
if npx quartz build; then
    echo "✅ Build successful"
    
    # 변경사항 추가 및 커밋
    git add .
    
    # 커밋할 변경사항이 있는지 확인
    if git diff --staged --quiet; then
        echo "📝 No changes to commit"
    else
        echo "📤 Committing changes..."
        git commit -m "Auto-deploy from Obsidian: $(date '+%Y-%m-%d %H:%M:%S')"
        
        # 푸시
        echo "🚀 Pushing to GitHub..."
        if git push origin v4; then
            echo "✅ Successfully deployed at $(date)"
            echo "🌐 Your site will be updated shortly at https://raymath.pages.dev"
        else
            echo "❌ Failed to push to GitHub"
            exit 1
        fi
    fi
else
    echo "❌ Build failed"
    exit 1
fi
