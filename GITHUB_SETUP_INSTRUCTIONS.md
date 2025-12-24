# GitHub'a Yükleme Talimatları (Basit Yöntem)

## Yöntem 1: GitHub Desktop (EN KOLAY) ⭐ ÖNERİLEN

### Adım 1: GitHub Desktop'ı İndirin ve Kurun
1. https://desktop.github.com/ adresine gidin
2. "Download for Windows" butonuna tıklayın
3. İndirilen dosyayı çalıştırın ve kurulumu tamamlayın

### Adım 2: GitHub Hesabınızla Giriş Yapın
1. GitHub Desktop'ı açın
2. "Sign in to GitHub.com" butonuna tıklayın
3. GitHub kullanıcı adı ve şifrenizle giriş yapın

### Adım 3: Repository Oluşturun ve Yükleyin
1. GitHub Desktop'ta "File" → "Add Local Repository" tıklayın
2. "Choose..." butonuna tıklayın
3. Bu klasörü seçin: `A:\POLITO\DIGIITAL HERITAGE\chicago fire`
4. "Add repository" tıklayın
5. Sol üstte "Publish repository" butonuna tıklayın
6. Repository adı: `chicago-fire` (veya istediğiniz)
7. "Keep this code private" seçeneğini KAPALI bırakın (Public olmalı!)
8. "Publish repository" tıklayın

### Adım 4: GitHub Pages'i Etkinleştirin
1. https://github.com adresine gidin
2. Oluşturduğunuz repository'yi açın (chicago-fire)
3. "Settings" sekmesine tıklayın
4. Sol menüden "Pages" seçin
5. "Source" altında "Deploy from a branch" seçin
6. Branch: `main`, Folder: `/ (root)` seçin
7. "Save" tıklayın

### Adım 5: Sitenizi Görün
1-2 dakika sonra siteniz şu adreste yayında olacak:
```
https://KULLANICIADI.github.io/chicago-fire/
```

---

## Yöntem 2: GitHub Web Arayüzü (Git Kurmadan)

### Adım 1: GitHub'da Repository Oluşturun
1. https://github.com adresine gidin ve giriş yapın
2. Sağ üstteki "+" → "New repository" tıklayın
3. Repository name: `chicago-fire`
4. Public seçin
5. "Add a README file" seçeneğini İŞARETLEMEYİN
6. "Create repository" tıklayın

### Adım 2: Dosyaları Yükleyin
1. Repository sayfasında "uploading an existing file" linkine tıklayın
2. VEYA "Add file" → "Upload files" tıklayın
3. Tüm klasörleri ve dosyaları sürükleyip bırakın:
   - index.html
   - README.md
   - audio/ klasörü
   - images/ klasörü
   - videos/ klasörü
   - (diğer tüm dosyalar)
4. "Commit changes" tıklayın

### Adım 3: GitHub Pages'i Etkinleştirin
1. Repository'de "Settings" → "Pages" tıklayın
2. Source: "Deploy from a branch"
3. Branch: `main`, Folder: `/ (root)`
4. "Save" tıklayın

---

## Önemli Notlar

- ✅ `index.html` dosyası zaten oluşturuldu
- ✅ Tüm dosya yolları göreli (relative) - sorun yok
- ⚠️ Video dosyaları büyük olabilir, yükleme biraz zaman alabilir
- ✅ Site 1-2 dakika içinde yayında olacak

## Sorun mu var?

Eğer bir sorunla karşılaşırsanız:
1. Repository'nin Public olduğundan emin olun
2. index.html dosyasının root klasörde olduğunu kontrol edin
3. GitHub Pages ayarlarında branch'in "main" olduğunu kontrol edin

