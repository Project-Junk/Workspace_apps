.class public Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "LockAfterTimeoutPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:I

.field private final b:Lcom/android/internal/widget/LockPatternUtils;

.field private final c:Lcom/android/settings/security/trustagent/b;

.field private final d:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 53
    iput p2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->a:I

    .line 54
    iput-object p3, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    const-string p2, "device_policy"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->d:Landroid/app/admin/DevicePolicyManager;

    .line 56
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/security/f;->a()Lcom/android/settings/security/trustagent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->c:Lcom/android/settings/security/trustagent/b;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "lock_after_timeout"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->a:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x50000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x80000

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 93
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 94
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->updateState(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PrefControllerMixin"

    const-string v0, "could not persist lockAfter timeout setting"

    .line 98
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 11

    .line 86
    check-cast p1, Lcom/android/settings/display/TimeoutListPreference;

    .line 1105
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x1388

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1107
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/display/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->d:Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 1110
    invoke-static {v0}, Lcom/android/settingslib/h;->c(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 1111
    iget-object v7, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->d:Landroid/app/admin/DevicePolicyManager;

    const/4 v8, 0x0

    .line 1112
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v7

    .line 1113
    iget-object v9, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 1114
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_off_timeout"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1113
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    .line 1118
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1119
    invoke-virtual {p1, v7, v8, v0}, Lcom/android/settings/display/TimeoutListPreference;->a(JLcom/android/settingslib/g$a;)V

    .line 2117
    :cond_0
    iget-object v0, p1, Lcom/android/settings/RestrictedListPreference;->a:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1207ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1131
    invoke-virtual {p1}, Lcom/android/settings/display/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1132
    invoke-virtual {p1}, Lcom/android/settings/display/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v7, v6

    move v8, v7

    .line 1134
    :goto_0
    array-length v9, v3

    if-ge v7, v9, :cond_3

    .line 1135
    aget-object v9, v3, v7

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v0, v9

    if-ltz v9, :cond_2

    move v8, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1141
    :cond_3
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    .line 1142
    invoke-static {v0, v1}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v7, 0x1

    if-nez v1, :cond_5

    .line 1144
    aget-object v1, v3, v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v9, v4

    if-nez v1, :cond_4

    .line 1145
    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120c42

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1148
    :cond_4
    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120c3c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v2, v2, v8

    aput-object v2, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1152
    :cond_5
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120c3b

    new-array v3, v7, [Ljava/lang/Object;

    aget-object v2, v2, v8

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settings/display/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
