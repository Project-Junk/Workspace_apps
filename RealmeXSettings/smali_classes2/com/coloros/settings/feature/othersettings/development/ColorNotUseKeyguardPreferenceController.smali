.class public Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "ColorNotUseKeyguardPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/development/q;


# instance fields
.field a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field b:Lcom/android/internal/widget/LockPatternUtils;

.field private c:Lcom/coloros/settings/feature/password/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/coloros/settings/feature/password/a;

    invoke-direct {v0, p1, p2}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->c:Lcom/coloros/settings/feature/password/a;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method private a(Z)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->c:Lcom/coloros/settings/feature/password/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x68

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 126
    invoke-virtual {v0, v1, v3, v2}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-direct {p0, p1, v3}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Z[B)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_key_guard_switch_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private a(Z[B)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->c:Lcom/coloros/settings/feature/password/a;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorNotUseKeyguardPreferenceController$J0U91_qc5sOrWMArsW9G02wkiU8;

    invoke-direct {v0, p0, p2, p1}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorNotUseKeyguardPreferenceController$J0U91_qc5sOrWMArsW9G02wkiU8;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;[BZ)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic a([BZ)V
    .locals 2

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->c:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 166
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->c:Lcom/coloros/settings/feature/password/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/a;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 167
    sget-object p1, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorNotUseKeyguardPreferenceController$zkbErpYydanXSvbB3g34r_i40zc;->INSTANCE:Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorNotUseKeyguardPreferenceController$zkbErpYydanXSvbB3g34r_i40zc;

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;)[B
    .locals 5

    const-string v0, "ColorNotUseKeyguardPreferenceController"

    if-eqz p0, :cond_2

    const-string v1, "password"

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "hw_auth_token"

    .line 193
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mToken "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", mUserPassword "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "intent is null"

    .line 199
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;)V
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Z)V

    return-void
.end method

.method private static synthetic c()V
    .locals 2

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$J0U91_qc5sOrWMArsW9G02wkiU8(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;[BZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a([BZ)V

    return-void
.end method

.method public static synthetic lambda$zkbErpYydanXSvbB3g34r_i40zc()V
    .locals 0

    invoke-static {}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->c()V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x69

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 182
    invoke-static {p3}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Landroid/content/Intent;)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Z[B)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x68

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    const/4 p1, 0x1

    .line 185
    invoke-static {p3}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Landroid/content/Intent;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Z[B)V

    :cond_1
    :goto_0
    return v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "oppo_keyguard"

    return-object v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 105
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 107
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1136
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    .line 1140
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 1141
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1146
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :goto_1
    move v2, v0

    goto :goto_2

    .line 1149
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1152
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "face"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceManager;

    if-nez v2, :cond_3

    goto :goto_1

    .line 1156
    :cond_3
    invoke-virtual {v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates()Z

    move-result v2

    :goto_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_9

    .line 1204
    :cond_4
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120514

    .line 1205
    invoke-virtual {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const v1, 0x7f120516

    .line 1207
    invoke-virtual {v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    const v1, 0x7f120513

    .line 1210
    invoke-virtual {v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    const v1, 0x7f120515

    .line 1212
    invoke-virtual {v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    :cond_7
    :goto_3
    const v1, 0x7f120517

    .line 1215
    new-instance v2, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;)V

    invoke-virtual {v3, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120491

    .line 1224
    new-instance v2, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$2;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;)V

    invoke-virtual {v3, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1231
    invoke-virtual {v3}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1233
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1234
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1236
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 1237
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1239
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600d3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1242
    :cond_8
    invoke-static {v1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    move v0, p2

    :cond_9
    if-nez v0, :cond_a

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 117
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Z)V

    :cond_a
    return p2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->updateState(Landroidx/preference/Preference;)V

    .line 1098
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isKeyGuardDisable isSecure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorNotUseKeyguardPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-object v1, p1

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v2, "oppo_key_guard_switch_value"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method
