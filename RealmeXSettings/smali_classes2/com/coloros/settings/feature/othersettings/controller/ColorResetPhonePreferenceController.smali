.class public Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;
.super Lcom/android/settings/system/ResetPreferenceController;
.source "ColorResetPhonePreferenceController.java"


# static fields
.field public static final KEY_PRIVACY_SETTINGS:Ljava/lang/String; = "privacy_settings"


# instance fields
.field private mIsSellMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "privacy_settings"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/system/ResetPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;->mIsSellMode:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/system/ResetPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "privacy_settings"

    .line 40
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;->mIsSellMode:Z

    if-nez v0, :cond_0

    const-string v0, "com.coloros.settings.feature.othersettings.recover.RecoveryDataMainFragment"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privacy_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;->mIsSellMode:Z

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120f7e

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/system/ResetPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
