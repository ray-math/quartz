#!/bin/bash

# 심볼릭 링크된 content 폴더 감시 및 자동 배포 스크립트
CONTENT_DIR="/Users/ray/Project/Obsidian/content"
QUARTZ_DIR="/Users/ray/Project/quartz"

echo "🔍 Watching for changes in $CONTENT_DIR"
echo "📁 Quartz directory: $QUARTZ_DIR"

# fswatch가 설치되어 있는지 확인
if ! command -v fswatch &> /dev/null; then
    echo "❌ fswatch is not installed. Installing with Homebrew..."
    brew install fswatch
fi

# 변경사항 감지 및 자동 배포
fswatch -o "$CONTENT_DIR" | while read f; do
    echo "📝 Changes detected in content folder at $(date)"
    
    cd "$QUARTZ_DIR"
    
    # 빌드 및 배포
    echo "🔨 Building Quartz..."
    if npx quartz build; then
        echo "✅ Build successful"
        
        # Git에 추가 및 커밋
        echo "📤 Committing changes..."
        git add .
        git commit -m "Auto-deploy: Content updated at $(date '+%Y-%m-%d %H:%M:%S')"
        
        # 푸시
        echo "🚀 Pushing to GitHub..."
        if git push origin v4; then
            echo "✅ Successfully deployed at $(date)"
        else
            echo "❌ Failed to push to GitHub"
        fi
    else
        echo "❌ Build failed"
    fi
    
    echo "⏳ Waiting for next change..."
done
