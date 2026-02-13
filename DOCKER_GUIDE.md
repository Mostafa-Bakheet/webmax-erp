# WEBMAX ERP - دليل التشغيل على Windows

## ⚠️ Bench لا يعمل على Windows مباشرة
Bench يحتاج Linux. استخدم Docker بدلاً منه.

## 🚀 طريقة التشغيل باستخدام Docker

### المتطلبات:
1. Docker Desktop مثبت على Windows
2. Docker Compose مفعل

### الخطوات:

```powershell
# 1. انتقل لمجلد المشروع
cd "c:\Users\mostafa saad\Downloads\erpnext-develop\erpnext-develop"

# 2. شغل الحاويات
docker-compose up -d

# 3. انتظر 2-3 دقائق حتى يصبح الموقع جاهز

# 4. افتح الموقع في المتصفح
# http://localhost:8080
```

### بيانات الدخول الافتراضية:
- **المستخدم:** Administrator
- **كلمة المرور:** admin

### الأوامر المفيدة:

```powershell
# إيقاف الموقع
docker-compose down

# إعادة تشغيل الموقع
docker-compose restart

# مشاهدة السجلات
docker-compose logs -f backend

# إنشاء موقع جديد
docker-compose exec backend bench new-site webmax.localhost --mariadb-root-password admin --admin-password admin

# تثبيت التطبيق
docker-compose exec backend bench --site webmax.localhost install-app erpnext
```

### لتفعيل اللغة العربية:
بعد تشغيل الموقع، شغل:
```powershell
docker-compose exec backend bench --site webmax.localhost execute erpnext.setup.install_arabic.setup_arabic_language
```

## 🌐 للنشر على الدومين webmax-erp.site

### خيار 1: Netlify (الأسهل)
تم إنشاء `netlify.toml` بالإعدادات اللازمة.

### خيار 2: VPS مع Docker
استخدم نفس `docker-compose.yml` على خادم Linux.

## 📁 ملفات التعديلات المهمة:

| الملف | الوصف |
|-------|-------|
| `erpnext/hooks.py` | إعدادات WEBMAX |
| `README.md` | التوثيق بالعربية |
| `netlify.toml` | إعدادات النشر |
| `docker-compose.yml` | إعدادات Docker |

## 🔧 للتطوير المحلي (متقدم):

إذا أردت التطوير المحلي بدون Docker، استخدم:
- WSL2 (Windows Subsystem for Linux)
- Ubuntu على WSL
- ثم تثبيت Bench على Ubuntu

لكن Docker هو الأسرع والأسهل.

---

**WEBMAX Technologies**
https://webmax-erp.site
