.class public Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "VerifyAppsOverUsbPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/development/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$a;

.field private final b:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$a;

    invoke-direct {v0, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$a;-><init>(Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->a:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$a;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->b:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "verify_apps_over_usb"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "verifier_setting_visible"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l_()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/android/settingslib/development/b;->l_()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 92
    iget-object p2, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "verifier_verify_adb_installs"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 100
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 1143
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adb_enabled"

    .line 1144
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    const-string v2, "package_verifier_enable"

    .line 1149
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1153
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    .line 1154
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1156
    iget-object v2, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    .line 103
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 105
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    return-void

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v4, "ensure_verify_apps"

    .line 2060
    invoke-static {v0, v4, v2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 113
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    return-void

    .line 117
    :cond_4
    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "verifier_verify_adb_installs"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v3

    .line 121
    :cond_5
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    return-void
.end method
