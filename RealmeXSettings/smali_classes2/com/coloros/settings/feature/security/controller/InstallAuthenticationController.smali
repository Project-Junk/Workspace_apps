.class public Lcom/coloros/settings/feature/security/controller/InstallAuthenticationController;
.super Lcom/android/settings/core/a;
.source "InstallAuthenticationController.java"


# static fields
.field public static final KEY_INSTALL_AUTHENTICATION:Ljava/lang/String; = "install_authentication"

.field public static final SETTINGS_INSTALL_APPLICATION:Ljava/lang/String; = "settings_install_authentication"

.field private static final SETTINGS_INSTALL_APPLICATION_ALL:I = 0x1

.field public static final SETTINGS_INSTALL_APPLICATION_FREQUENCY:Ljava/lang/String; = "settings_install_authentication_frequency"

.field private static final SETTINGS_INSTALL_APPLICATION_NONE:I = 0x2

.field public static final SETTINGS_INSTALL_APPLICATION_NOT_APP_STORE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "install_authentication"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getResId()I
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAuthenticationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_install_authentication"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7f120b2e

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f120b2d

    goto :goto_0

    :cond_1
    const v1, 0x7f120b2c

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 41
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 78
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_authentication"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAuthenticationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/controller/InstallAuthenticationController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAuthenticationController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/InstallAuthenticationController;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method
