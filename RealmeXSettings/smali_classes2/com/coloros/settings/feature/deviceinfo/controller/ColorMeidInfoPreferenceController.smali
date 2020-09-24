.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;
.super Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;
.source "ColorMeidInfoPreferenceController.java"


# static fields
.field private static final IMEI_INFO_KEY:Ljava/lang/String; = "meid_info"

.field private static final TAG:Ljava/lang/String; = "ColorMeidInfoPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "meid_info"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;
    .locals 2

    .line 88
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 89
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120781

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 91
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    .line 93
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setShouldDisableView(Z)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setPersistent(Z)V

    const p1, 0x7f0d00a7

    .line 95
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAvailable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->isAvailableImeiOrMeidNumber(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorMeidInfoPreferenceController"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->isAvailableImeiOrMeidNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bb;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->updatePreference(Landroidx/preference/Preference;)V

    return-void

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {v0}, Lcom/android/settings/m;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 38
    :goto_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->D()Z

    move-result v3

    if-nez v3, :cond_2

    .line 39
    invoke-static {}, Lcom/coloros/settings/utils/bh;->E()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 40
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAvailabilityStatus: isAdminUser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasClientFeature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorMeidInfoPreferenceController"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x3

    return v0
.end method

.method public getPhoneCount()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->g(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public updatePreference(Landroidx/preference/Preference;)V
    .locals 3

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 70
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v2, 0x7f121548

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePreference(Landroidx/preference/Preference;I)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121548

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
