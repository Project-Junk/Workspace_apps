.class public Lcom/android/settings/display/TimeoutPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "TimeoutPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 99
    array-length v0, p3

    array-length v2, p2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 105
    aget-object v2, p3, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    .line 107
    aget-object p0, p2, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private a(Lcom/android/settings/display/TimeoutListPreference;J)V
    .locals 3

    .line 115
    invoke-virtual {p1}, Lcom/android/settings/display/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/android/settings/display/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1117
    iget-object v2, p1, Lcom/android/settings/RestrictedListPreference;->a:Lcom/android/settingslib/i;

    .line 1161
    iget-boolean v2, v2, Lcom/android/settingslib/i;->a:Z

    if-eqz v2, :cond_0

    .line 119
    iget-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const p3, 0x7f1207ee

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p2, p3, v0, v1}, Lcom/android/settings/display/TimeoutPreferenceController;->a(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_0

    .line 123
    :cond_1
    iget-object p3, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f121316

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 125
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 127
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/display/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 88
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 89
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    check-cast p1, Lcom/android/settings/display/TimeoutListPreference;

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/display/TimeoutPreferenceController;->a(Lcom/android/settings/display/TimeoutListPreference;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TimeoutPrefContr"

    const-string v0, "could not persist screen timeout setting"

    .line 92
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 61
    check-cast p1, Lcom/android/settings/display/TimeoutListPreference;

    .line 62
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/display/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {v1}, Lcom/android/settingslib/h;->c(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    .line 72
    invoke-virtual {p1, v2, v3, v1}, Lcom/android/settings/display/TimeoutListPreference;->a(JLcom/android/settingslib/g$a;)V

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/display/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 74
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/display/TimeoutPreferenceController;->a(Lcom/android/settings/display/TimeoutListPreference;J)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_screen_timeout"

    .line 77
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    .line 81
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settings/display/TimeoutListPreference;->a(JLcom/android/settingslib/g$a;)V

    :cond_1
    return-void
.end method
