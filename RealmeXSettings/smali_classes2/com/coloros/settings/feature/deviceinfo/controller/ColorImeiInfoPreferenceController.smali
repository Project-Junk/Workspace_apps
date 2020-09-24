.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;
.super Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;
.source "ColorImeiInfoPreferenceController.java"


# static fields
.field private static final IMEI_INFO_KEY:Ljava/lang/String; = "imei_info"

.field private static final TAG:Ljava/lang/String; = "ColorImeiInfoPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "imei_info"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;
    .locals 2

    .line 92
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120781

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 97
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    .line 98
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setShouldDisableView(Z)V

    .line 99
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setPersistent(Z)V

    const p1, 0x7f0d00a7

    .line 101
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->updatePreference(Landroidx/preference/Preference;)V

    .line 54
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "for cycle isAvailable = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->isAvailableImeiOrMeidNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorImeiInfoPreferenceController"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->isAvailableImeiOrMeidNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;

    move-result-object v2

    add-int v3, v0, v1

    .line 61
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 64
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0, v2, v1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->updatePreference(Landroidx/preference/Preference;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getPhoneCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->g(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public updatePreference(Landroidx/preference/Preference;)V
    .locals 2

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 73
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->getTitleForGsmPhone(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->getTitleForGsmPhone(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePreference(Landroidx/preference/Preference;I)V
    .locals 1

    .line 86
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->getTitleForGsmPhone(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
