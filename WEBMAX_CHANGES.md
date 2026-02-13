# WEBMAX ERP - ملخص التعديلات

## التعديلات المكتملة

### 1. تغيير اسم المشروع من ERPNext إلى WEBMAX ✅

**الملفات المعدلة:**
- `erpnext/hooks.py` - إعدادات التطبيق الرئيسية
- `erpnext/__init__.py` - إصدار التطبيق
- `package.json` - إعدادات npm
- `pyproject.toml` - إعدادات Python
- `README.md` - تمت الترجمة للعربية
- `erpnext/modules.txt` - أسماء الموديولات بالعربية

**التغييرات الرئيسية:**
- اسم التطبيق: webmax
- عنوان التطبيق: WEBMAX
- الناشر: WEBMAX Technologies
- البريد: hello@webmax-erp.site
- اللون: #2563eb (أزرق)
- الإصدار: 1.0.0-dev

### 2. الترجمة العربية ✅

**الملفات المعدلة:**
- `erpnext/locale/ar.yml` - ملف ترجمات عربي جديد
- `erpnext/locale/ar.po` - تحديث ملف الترجمة
- `erpnext/setup/install_arabic.py` - سكريبت إعداد اللغة العربية

**الترجمات المضافة:**
- جميع أسماء الموديولات بالعربية
- المصطلحات المحاسبية (فاتورة مبيعات، فاتورة مشتريات، إلخ)
- مصطلحات المخزون (مستودع، صنف، إلخ)
- أزرار وإجراءات الواجهة

### 3. إعداد الدومين webmax-erp.site ✅

**الملفات المعدلة:**
- `netlify.toml` - إعدادات النشر

**التكوين:**
- الدومين: webmax-erp.site
- السubdomain: webmax-erp

## ملاحظات هامة

### للنشر:
تم إنشاء ملف `netlify.toml` بالإعدادات اللازمة للنشر على Netlify.

### اللوجو:
يرجى وضع ملف اللوجو (webmax-logo.png) في المسار:
`erpnext/public/images/webmax-logo.png`

### لتفعيل اللغة العربية:
شغل هذا الأمر بعد تثبيت التطبيق:
```bash
bench --site [site-name] execute erpnext.setup.install_arabic.setup_arabic_language
```

### الأوامر الأساسية:
```bash
# إنشاء موقع جديد
bench new-site webmax.localhost

# تثبيت التطبيق
bench --site webmax.localhost install-app erpnext

# تشغيل الموقع
bench start
```

## الموديولات المترجمة للعربية
1. حسابات
2. CRM (إدارة العملاء)
3. مشتريات
4. مشاريع
5. مبيعات
6. إعدادات
7. تصنيع
8. مخزون
9. دعم
10. خدمات
11. أصول
12. بوابة
13. صيانة
14. إقليمي
15. تكاملات WEBMAX
16. إدارة الجودة
17. اتصالات
18. اتصالات هاتفية
19. معاملات بالجملة
20. التعاقد من الباطن
21. EDI

## روابط مهمة
- الموقع: https://webmax-erp.site
- الدعم: hello@webmax-erp.site
- GitHub: https://github.com/webmax/webmax

---
تم إعداد هذا المشروع بواسطة WEBMAX Technologies
