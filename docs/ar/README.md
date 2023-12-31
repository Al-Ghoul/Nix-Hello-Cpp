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
3. Description (الوصف): .برنامج يقوم بإظهار رسالة تحية
4. Homepage (صفحة المشروع) GitHub يمكن لهذا أن يكون صفحة الوثائق أو صفحة المشروع علي: https://github.com/Al-Ghoul/Nix-Hello-Cpp
5. Create project .(قم بالضغط عليه) تجاهل أي شئ آخر

Declartive spec و inputالــ <br>
(سأقوم بتوفير مثال لاحقاً) JSON موجودين لإمكانية إمداد هيدرا بجميع المعلومات عن المشروع في شكل

## إضافة (مجموعة) الوظائف

بعدما تضف مشروعك، إذهب لصفحة الفهرس الخاصة بهيدرا, ستجد مشاريعك هناك في قائمة.

1. إضغط علي Create jobset <- actions
2. Identifier (المُعرف): Nix-Hello-Cpp-Build
3. Type (النوع): Legacy
4. Description (الوصف): Nix-Hello's build jobset.
5. Nix expression (ملف نيكس الذي سيقوم ببناء المشروع): release.nix _in_ helloSrc
6. Check interval (الفاصل الزمني للتحقق من المشروع): 60
7. Scheduling shares: 1<br>

### المدخلات

تجاهل باقي المدخلات و قم بالنزول لأسفل الصفحة

1. إضغط علي Add a new input:
    1. input name (إسم المُدخل) يتم تمرير هذا المُدخل للملف [release.nix](https://github.com/Al-Ghoul/Nix-Hello-Cpp/blob/main/release.nix#L2): helloSrc
    2. Type (النوع): Git checkout
    3. Value (القيمة) بلا علامات تنصيص: "https://github.com/Al-Ghoul/Nix-Hello-Cpp main" <br>
       (أو قم بإضافة رابط مشروعك, إن كنت تتسائل لما هناك كلمة 'main', الحقيقة أن هيدرا تقوم بالبحث عن تفرُع 'master' و نحن لدينا تفرُع واحد و هو 'main' بهذه الطريقة هيدرا يقوم بالبحث في 'main')
2. قم بإضافة مدحل آخر:
    1. input: nixpkgs
    2. Type: Git checkout
    3. Value: "https://github.com/nixos/nixpkgs nixos-23.11" <br>
       master تقوم بتبديل nixos-23.11 مرة أخري بلا علامات تنصيص و هنا

## مراجع

[NixOS Hydra's Manual](https://hydra.nixos.org/build/196107287/download/1/hydra/introduction.html) <br>
[NixOS Hydra's Official Repo](https://github.com/NixOS/hydra) <br>
[NixOS Hydra's Wiki](https://nixos.wiki/wiki/Hydra)
