.class public Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;
.super Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;
.source "ColorDisplayTimeOutController.java"


# static fields
.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE_ONE_MINUTE:I = 0xea60

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "screen_timeout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "screen_timeout"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->setSingleSelect(Z)V

    return-void
.end method

.method private getCurrentTimeoutEntry()Ljava/lang/String;
    .locals 10

    .line 146
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {v2}, Lcom/coloros/settings/utils/al;->at(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0xea60

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x7530

    :goto_0
    const-string v4, "screen_off_timeout"

    .line 152
    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    const/4 v3, 0x0

    move v5, v3

    .line 156
    :goto_1
    array-length v6, v0

    const/4 v7, -0x1

    if-ge v5, v6, :cond_3

    .line 157
    aget-object v6, v0, v5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v8, v6

    cmp-long v6, v1, v8

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_2
    if-ne v7, v5, :cond_5

    .line 163
    invoke-static {}, Lcom/coloros/settings/utils/al;->b()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 166
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->at(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    .line 167
    :goto_3
    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v0, v0, v1

    .line 168
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    if-ne v1, v7, :cond_6

    move v1, v3

    .line 175
    :cond_6
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 117
    array-length v0, p3

    array-length v2, p2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 122
    aget-object v2, p3, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    .line 124
    aget-object p0, p2, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static getTimeoutDescriptionIndex(Landroid/content/Context;)I
    .locals 6

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    .line 179
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0300cc

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-ltz v2, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 186
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 187
    aget-object v4, p0, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v3
.end method

.method private updateTimeoutPreferenceDescription(Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;J)V
    .locals 3

    .line 131
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object p2, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    const p3, 0x7f1207ee

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p2, p3, v0, v1}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_0

    .line 138
    :cond_1
    iget-object p3, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    const v0, 0x7f121316

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 140
    :goto_0
    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    .line 49
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->setDefaultEntry(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mDialogPreference:Landroidx/preference/DialogPreference;

    instance-of v0, v0, Lcom/color/support/preference/ColorListPreference;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public handlePreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "screen_off_timeout"

    .line 62
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 65
    invoke-static {v0, p2}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;I)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->updateState(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 73
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 74
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v0, :cond_4

    .line 77
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->at(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/32 v1, 0xea60

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x7530

    :goto_0
    const-string v3, "screen_off_timeout"

    .line 80
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {v1}, Lcom/android/settingslib/h;->c(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    .line 90
    invoke-virtual {p1, v2, v3, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(JLcom/android/settingslib/g$a;)V

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->updateTimeoutPreferenceDescription(Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;J)V

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {v0}, Lcom/coloros/settings/custom/b;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 95
    :goto_1
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setEnabled(Z)V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDisplayTimeOutController;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_screen_timeout"

    .line 98
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Lcom/android/settingslib/g$a;)V

    :cond_4
    return-void
.end method
