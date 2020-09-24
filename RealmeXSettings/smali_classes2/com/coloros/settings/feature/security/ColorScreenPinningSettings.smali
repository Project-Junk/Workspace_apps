.class public Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:Ljava/lang/CharSequence;

.field private static final b:Ljava/lang/CharSequence;


# instance fields
.field private c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private d:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;

.field private e:Landroidx/preference/TwoStatePreference;

.field private f:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "screen_pinning_enable"

    .line 69
    sput-object v0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a:Ljava/lang/CharSequence;

    const-string v0, "use_screen_lock"

    .line 70
    sput-object v0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b:Ljava/lang/CharSequence;

    .line 256
    new-instance v0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$3;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$3;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->e()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->c(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()V
    .locals 1

    .line 1145
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 1147
    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lock_to_app_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Z)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b(Z)Z

    move-result p0

    return p0
.end method

.method private b(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 161
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result p1

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "lockscreen.password_type"

    .line 167
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "minimum_quality"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x2b

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->c(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c()Ljava/lang/CharSequence;
    .locals 1

    .line 66
    sget-object v0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_exit_locked"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic d()Ljava/lang/CharSequence;
    .locals 1

    .line 66
    sget-object v0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private e()Z
    .locals 5

    .line 154
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->f()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f1212f9

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private f()I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->f:Lcom/android/internal/widget/LockPatternUtils;

    .line 200
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1212fa

    return v0

    :cond_1
    const v0, 0x7f1212fc

    return v0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->f:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1212fb

    return v0

    :cond_3
    :goto_0
    const v0, 0x7f1212f9

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 233
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->d:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 234
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 237
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->d:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 240
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "oppo.intent.action.NAVIGATION_BAR_SETTINGS"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ab(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    return-void

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x56

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 92
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->f:Lcom/android/internal/widget/LockPatternUtils;

    const v0, 0x7f150062

    .line 93
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;-><init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Landroid/content/Context;S)V

    iput-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->d:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;

    .line 100
    sget-object v1, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 102
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    new-instance v2, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;-><init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 118
    sget-object p1, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->e:Landroidx/preference/TwoStatePreference;

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->e:Landroidx/preference/TwoStatePreference;

    new-instance v0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$2;-><init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2b

    if-ne p1, p2, :cond_1

    .line 188
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 189
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 192
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b(Z)Z

    .line 194
    iget-object p2, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 295
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 296
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 223
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a()V

    return-void
.end method
