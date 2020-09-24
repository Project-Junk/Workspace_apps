.class public Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "Color4GSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_4G_SWITCH:Ljava/lang/String; = "switch_4g"

.field private static final TAG:Ljava/lang/String; = "Color4GSwitchPreferenceController"


# instance fields
.field private m4GSwitchPref:Landroidx/preference/TwoStatePreference;

.field private mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

.field private mConnectCategory:Landroidx/preference/PreferenceCategory;

.field private mIsCtcc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "switch_4g"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    .line 47
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->w(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mIsCtcc:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;)Landroid/telephony/ColorOSTelephonyManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;Landroid/telephony/ColorOSTelephonyManager;)Landroid/telephony/ColorOSTelephonyManager;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 34
    invoke-static {}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->getSupported4GSlot()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->setPreferredNetWorkMode(I)V

    return-void
.end method

.method private configCtccPrefSettings()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mIsCtcc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mConnectCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private getPreferredNetWorkMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getSupported4GSlot()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private is4GSwitchEnable()Z
    .locals 4

    .line 117
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    invoke-static {}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->getSupported4GSlot()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    invoke-static {}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->getSupported4GSlot()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/ColorOSTelephonyManager;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iccCardType="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Color4GSwitchPreferenceController"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const-string v2, "CSIM"

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    .line 135
    invoke-static {}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->getSupported4GSlot()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/ColorOSTelephonyManager;->colorIsWhiteSIMCard(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private is4GSwitchOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private setPreferredNetWorkMode(I)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->am(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "preferred_network_mode"

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setPreferredNetWorkMode mode="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Color4GSwitchPreferenceController"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    const-string v0, "connect_settings_category"

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mConnectCategory:Landroidx/preference/PreferenceCategory;

    .line 55
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->configCtccPrefSettings()V

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController$1;-><init>(Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mIsCtcc:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->update4GPreferenceState()V

    :cond_0
    return-void
.end method

.method public update4GPreferenceState()V
    .locals 3

    .line 99
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->is4GSwitchEnable()Z

    move-result v0

    const v1, 0x7f080985

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->is4GSwitchOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/af;->b(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->m4GSwitchPref:Landroidx/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/af;->a(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
