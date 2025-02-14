<%*
const rootFolder = "content"; // Vault 내부 상대 경로
const outputPath = `${rootFolder}/Recent Notes.md`; // 저장할 파일명
const currentFilePath = tp.file.path; // 현재 실행 중인 템플릿 파일 경로

async function generateRecentNotes() {
    try {
        // 📂 `content` 폴더가 없으면 생성
        if (!app.vault.getAbstractFileByPath(rootFolder)) {
            await app.vault.createFolder(rootFolder);
        }

        // **1️⃣ 모든 Markdown 파일 가져오기 (루트 폴더 제외)**
        const allFiles = app.vault.getFiles()
            .filter(file => file.path.startsWith(rootFolder + "/") && file.extension === "md")
            .filter(file => file.path.split("/").length > 2) // 📌 루트 폴더 아래 있는 파일 제외
            .map(file => {
                const fileCache = app.metadataCache.getCache(file.path) || {}; 
                const frontmatter = fileCache.frontmatter || {}; 
                const title = frontmatter.title ? frontmatter.title : file.basename; // `title`이 없으면 파일명 사용
                const date = frontmatter.date ? new Date(frontmatter.date).getTime() : file.stat.mtime; // `date` 사용, 없으면 `mtime`
                
                return {
                    name: file.basename,
                    title: title,
                    path: file.path,
                    date: date // `date`가 있으면 사용, 없으면 `mtime`
                };
            });

        // **2️⃣ 최근 날짜 기준으로 정렬 (내림차순)**
        allFiles.sort((a, b) => b.date - a.date);

        // **3️⃣ 파일 목록 Markdown 포맷으로 변환**
        let content = allFiles.map(file => `- [[${file.name} | ${file.title}]]`).join("\n");

        // **4️⃣ 기존 파일이 존재하는지 확인 후 삭제**
        const existingFile = app.vault.getAbstractFileByPath(outputPath);
        if (existingFile) {
            await app.vault.delete(existingFile); // 기존 파일 삭제
        }

        // **5️⃣ 새로운 Markdown 파일 생성 (`Recent Notes.md`)**
        await app.vault.create(outputPath, content);
        new Notice(`✅ '${outputPath}' 생성 완료`);

    } catch (error) {
        new Notice(`⚠️ 오류 발생: ${error.message}`);
        console.error(error);
    }
}

// 🔄 비동기 함수 실행
generateRecentNotes();
%>