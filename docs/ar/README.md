For English docs click on the following URL: Docs

# مُقدمة

هذا هو مثال لبناء برنامج C++ علي [Hydra](https://nixos.wiki/wiki/Hydra) (تُنطق هَيدرا) (لا نستخدم أدوات GNU لإبقاء المثال بسيطاً).

# كيفية إضافة هذا المشروع (أو نسخة منه) لهيدرا

## التثبيت

1. قم بزيارة لوحة التحكم الخاصة بك, عادتاً علي هذا العنوان: http://localhost:3000
2. قم بالضغط علي Create project <- Admin (إفتراضاً بأنك قمت بعمل حساب مدير و قمت بتسجيل الدخول أيضاً, إن لم يكن هذا صحيحاً فقم باتباع
   شرح [التثبيت و الإعداد](https://github.com/NixOS/hydra?tab=readme-ov-file#installation-and-setup) الخاص بهم

## إضافة مشروع

**إقرأ الآتي من اليسار لليمين**

1. Identifier (المُعرف): Nix-Hello-Cpp (أو أي شئ تريده و لكن يجب أن يكون فريداً ولا يشبه أسماء أي مشاريع سابقة علي هيدرا)
2. Display name (الإسم الذي سيظهر لك): Nix-Hello-Cpp
3. Description (الوصف): برنامج يقوم بإظهار رسالة تحية.
4. Homepage (صفحة المشروع) GitHub يمكن لهذا أن يكون صفحة الوثائق أو صفحة المشروع علي: https://github.com/Al-Ghoul/Nix-Hello-Cpp
5. Create project (قم بالضغط عليه) تجاهل أي شئ آخر>

declartive spec/input موجودين لإمكانية إمداد هيدرا بجميع المعلومات عن المشروع في شكل JSON1 (سأقوم بتوفير مثال لاحقاً)
