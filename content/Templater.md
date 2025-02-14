<%*
const rootFolder = "content"; // Vault 내부 상대 경로 (절대 경로 X)
const outputPath = `${rootFolder}/Posts.md`; // 고정된 파일명 사용 (날짜 제거)

console.log("📂 생성할 파일 경로:", outputPath);

// 1️⃣ **폴더 존재 여부 확인 후 생성 (없으면 자동 생성)**
const folderExists = app.vault.getAbstractFileByPath(rootFolder);
if (!folderExists) {
    await app.vault.createFolder(rootFolder);
    new Notice(`📁 '${rootFolder}' 폴더가 없어서 자동 생성했습니다.`);
}

// 2️⃣ **모든 Markdown 파일 가져오기 (루트 폴더 제외)**
const allFiles = app.vault.getFiles()
    .filter(file => file.path.startsWith(rootFolder + "/") && file.extension === "md")
    .filter(file => file.path.split("/").length > 2); // 루트 폴더 파일 제외

console.log("📂 모든 파일 목록:", allFiles.map(file => file.path)); // 디버깅용

// 3️⃣ **정리할 파일이 없는 경우 종료**
if (allFiles.length === 0) {
    new Notice("⚠️ /content 폴더에 Markdown 파일이 없습니다.");
    return;
}

// 4️⃣ **파일 내용 초기화**
let content = ``; // 파일 제목 및 날짜 제거

// 5️⃣ **폴더 목록 가져오기 (가나다 정렬)**
const folderNames = [...new Set(allFiles
    .map(file => file.path.split("/")[1]))] // 상위 폴더만 추출
    .sort((a, b) => a.localeCompare(b, "ko-KR"));

console.log("📂 정렬된 폴더 목록:", folderNames);

// 6️⃣ **각 폴더별 파일 정리**
folderNames.forEach(folder => {
    content += `## ${folder}\n\n`;

    // 하위 폴더 목록 추출 (가나다 정렬)
    const subFolders = [...new Set(allFiles
        .filter(file => file.path.startsWith(`${rootFolder}/${folder}/`) && file.path.split("/").length > 3) // 하위 폴더만
        .map(file => file.path.split("/")[2]))] // 하위 폴더명 추출
        .sort((a, b) => a.localeCompare(b, "ko-KR"));

    console.log(`📂 ${folder} 하위 폴더 목록:`, subFolders);

    // 하위 폴더별 파일 정리
    subFolders.forEach(subFolder => {
        content += `### ${subFolder}\n\n`;

        const subFolderFiles = allFiles
            .filter(file => file.path.startsWith(`${rootFolder}/${folder}/${subFolder}/`))
            .map(file => ({
                name: file.basename,
                modified: file.stat.mtime // 수정 시간 가져오기
            }));

        // 📌 Youtube 폴더 내 파일은 최신 날짜순 정렬 (내림차순)
        if (folder === "Youtube") {
            subFolderFiles.sort((a, b) => b.modified - a.modified);
        } else {
            subFolderFiles.sort((a, b) => a.name.localeCompare(b.name, "ko-KR"));
        }

        subFolderFiles.forEach(file => {
            content += `- [[${file.name}]]\n`;
        });

        content += "\n";
    });

    content += "\n";
});

// 7️⃣ **파일이 이미 존재하면 삭제 후 생성**
const existingFile = app.vault.getAbstractFileByPath(outputPath);
if (existingFile) {
    await app.vault.delete(existingFile);
    console.log(`🗑 기존 파일 삭제: ${outputPath}`);
}

// 8️⃣ **새로운 Markdown 파일 생성 (`/content/Posts.md` 내부에 저장)**
try {
    await app.vault.create(outputPath, content);
    new Notice(`✅ 파일 생성 완료: ${outputPath}`);
} catch (error) {
    new Notice(`❌ 파일 생성 실패: ${error}`);
    console.log("파일 생성 오류:", error);
}
%>

