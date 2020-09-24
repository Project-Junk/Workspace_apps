.class public Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/android/internal/widget/LockPatternUtils;

.field private final b:Lcom/android/settings/accessibility/b;

.field private l:Landroid/content/ComponentName;

.field private m:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->b:Lcom/android/settings/accessibility/b;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->g()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/content/Context;Z)V
    .locals 4

    .line 4416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4417
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->l:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 4418
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_3

    const-string v1, ""

    .line 4420
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 4421
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "20120"

    if-eqz v1, :cond_0

    const-string p0, "key_talkback_state"

    .line 4422
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "event_talkback_state"

    .line 4423
    invoke-static {p1, v3, p0, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v1, "com.google.android.marvin.talkback/com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 4424
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "key_accessibility_state"

    .line 4425
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "event_accessibility_state"

    .line 4426
    invoke-static {p1, v3, p0, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string v1, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 4427
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "key_select_to_speak_state"

    .line 4428
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "event_select_to_speak"

    .line 4429
    invoke-static {p1, v3, p0, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    const-string v1, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    .line 4430
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "key_click_switch_access_state"

    .line 4431
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "event_click_switch_access"

    .line 4432
    invoke-static {p1, p0, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Z)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-nez v0, :cond_1

    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->l:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->l:Landroid/content/ComponentName;

    .line 246
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access"

    .line 245
    invoke-static {v0, v1, v2}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->l:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    .line 249
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    return-void

    .line 251
    :cond_3
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 4263
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private f()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 137
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 138
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 139
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->l:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->l:Landroid/content/ComponentName;

    .line 140
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/app/Dialog;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->m:Landroid/app/Dialog;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2049
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->l:Landroid/content/ComponentName;

    .line 227
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 232
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->b(Z)V

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_0

    const v0, 0x7f1208cb

    goto :goto_0

    :cond_0
    const v0, 0x7f1208cd

    goto :goto_0

    :cond_1
    const v0, 0x7f1208cc

    :goto_0
    const/4 v1, 0x1

    .line 357
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->f()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 357
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 363
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a()V

    .line 364
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$a;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 388
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Landroid/os/Bundle;)V

    const-string v0, "settings_title"

    .line 390
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_component_name"

    .line 391
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 394
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->f:Ljava/lang/CharSequence;

    .line 398
    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->g:Landroid/content/Intent;

    const/4 v0, 0x1

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->b()V

    :cond_0
    const-string v0, "component_name"

    .line 406
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->l:Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 124
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x247

    return p1

    :cond_0
    const/16 p1, 0x248

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 270
    invoke-direct {p0, p3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c(Z)V

    .line 2263
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "require_password_to_decrypt"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 280
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c(Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0a04d2

    if-ne v0, v3, :cond_3

    .line 3263
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->h()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 294
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c(Z)V

    .line 3318
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 3320
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p1

    .line 3322
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3323
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_1

    .line 3324
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3325
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->f()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 3326
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 3328
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 3327
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_2
    if-eqz v1, :cond_6

    const/4 p1, 0x3

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0a04d3

    if-ne v0, v3, :cond_4

    .line 300
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c(Z)V

    goto :goto_0

    .line 301
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0a04d1

    if-ne v0, v3, :cond_5

    .line 302
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c(Z)V

    goto :goto_0

    .line 303
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a04d0

    if-ne p1, v0, :cond_7

    .line 304
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c(Z)V

    .line 308
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->m:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 306
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "com.android.internal.R.integer.config_navBarInteractionMode"

    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/a;->b(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->m:Landroid/app/Dialog;

    goto/16 :goto_1

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/a;->a(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->m:Landroid/app/Dialog;

    goto :goto_1

    .line 210
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 179
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->f()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    .line 185
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 1207
    new-instance v4, Lcolor/support/v7/app/AlertDialog$Builder;

    const v5, 0x7f1303b1

    invoke-direct {v4, v0, v5}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f1207e7

    new-array v1, v1, [Ljava/lang/Object;

    .line 1209
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v3

    .line 1208
    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120fce

    .line 1210
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 1211
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/accessibility/a$3;

    invoke-direct {v0, v2}, Lcom/coloros/settings/feature/accessibility/a$3;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1212
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1220
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 1221
    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->m:Landroid/app/Dialog;

    goto :goto_1

    .line 151
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->f()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v0

    .line 157
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/feature/accessibility/a;->a(Landroid/app/Activity;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->m:Landroid/app/Dialog;

    .line 213
    :goto_1
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->m:Landroid/app/Dialog;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->b:Lcom/android/settings/accessibility/b;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1050
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 119
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->b:Lcom/android/settings/accessibility/b;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/b;->a(Landroid/content/ContentResolver;)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->g()V

    .line 113
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onResume()V

    return-void
.end method
