.class public Lcom/android/settings/notification/ZenModePreferenceController;
.super Lcom/android/settings/core/a;
.source "ZenModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModePreferenceController$a;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$a;

.field private mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance p2, Lcom/android/settings/notification/ZenModeSettings$a;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/ZenModeSettings$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$a;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    new-instance v0, Lcom/android/settings/notification/ZenModePreferenceController$a;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/ZenModePreferenceController$a;-><init>(Lcom/android/settings/notification/ZenModePreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$a;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1097
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/ZenModePreferenceController$a;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1092
    iget-object v2, v0, Lcom/android/settings/notification/ZenModePreferenceController$a;->a:Landroid/net/Uri;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1093
    iget-object v2, v0, Lcom/android/settings/notification/ZenModePreferenceController$a;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 74
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$a;

    .line 1171
    iget-object v1, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1174
    iget-object v1, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 1175
    iget-object v4, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    invoke-static {v4, v3, v1, v2}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1178
    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v1, 0x7f121b8b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1180
    :cond_0
    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v4, 0x7f121b8c

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1184
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$a;->a()I

    move-result v1

    if-lez v1, :cond_2

    .line 1186
    iget-object v4, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v5, 0x7f121b8a

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    .line 1187
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f100066

    new-array v3, v3, [Ljava/lang/Object;

    .line 1189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v2

    .line 1187
    invoke-virtual {v0, v7, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 1186
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1192
    :cond_2
    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v1, 0x7f121b89

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
