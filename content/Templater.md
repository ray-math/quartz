---
published: "false"
---
<%*
const rootFolder = "content"; // Vault 내부 상대 경로
const outputNotesPath = `${rootFolder}/Notes.md`; // Notes 저장 경로

console.log("📂 파일을 생성할 경로:", outputNotesPath);

// **1️⃣ 모든 Markdown 파일 가져오기**
const allFiles = app.vault.getFiles()
    .filter(file => file.path.startsWith(rootFolder + "/") && file.extension === "md");

// **2️⃣ 파일이 없으면 종료**
if (allFiles.length === 0) {
    new Notice("⚠️ /content 폴더에 Markdown 파일이 없습니다.");
    return;
}

// **3️⃣ 폴더별 정리**
const folderMap = {};
for (const file of allFiles) {
    const parts = file.path.split("/");
    if (parts.length < 3) continue; // 📌 루트 폴더 아래 파일 제외 (최소 depth 3)

    const folder = parts[1]; 
    const subFolder = parts.length > 3 ? parts[2] : null; 

    if (!folderMap[folder]) folderMap[folder] = { files: [], subFolders: {} };
    if (subFolder) {
        if (!folderMap[folder].subFolders[subFolder]) folderMap[folder].subFolders[subFolder] = [];
        folderMap[folder].subFolders[subFolder].push(file);
    } else {
        folderMap[folder].files.push(file);
    }
}

// **📂 폴더 가나다순 정렬**
const sortedFolders = Object.keys(folderMap).sort((a, b) => a.localeCompare(b, "ko-KR"));

// **📑 Notes.md 생성**
let notesContent = "";
for (const folder of sortedFolders) {
    notesContent += `## ${folder}\n`;

    // 📌 **상위 폴더 내 직접 포함된 md 파일 가져오기**
    let topLevelFiles = folderMap[folder].files.map(file => {
        let fileCache = app.metadataCache.getCache(file.path);
        let title = file.basename;
        
        if (fileCache && fileCache.frontmatter && fileCache.frontmatter.title) {
            title = fileCache.frontmatter.title;
        }

        return { name: file.basename, title: title };
    }).sort((a, b) => a.title.localeCompare(b.title, "ko-KR"));

    for (const file of topLevelFiles) {
        notesContent += `- [[${file.name} | ${file.title}]]\n`;
    }

    // 📌 **하위 폴더 정렬 후 추가**
    const sortedSubFolders = Object.keys(folderMap[folder].subFolders).sort((a, b) => a.localeCompare(b, "ko-KR"));

    for (const subFolder of sortedSubFolders) {
        notesContent += `\n### ${subFolder}\n`;

        let subFolderFiles = folderMap[folder].subFolders[subFolder].map(file => {
            let fileCache = app.metadataCache.getCache(file.path);
            let title = file.basename;
            
            if (fileCache && fileCache.frontmatter && fileCache.frontmatter.title) {
                title = fileCache.frontmatter.title;
            }

            return { name: file.basename, title: title };
        }).sort((a, b) => a.title.localeCompare(b.title, "ko-KR"));

        for (const file of subFolderFiles) {
            notesContent += `- [[${file.name} | ${file.title}]]\n`;
        }
    }
    notesContent += "\n";
}

// **📌 Notes.md 덮어쓰기**
await app.vault.adapter.write(outputNotesPath, notesContent);
new Notice(`✅ '${outputNotesPath}' 생성 완료`);

return;
%>
