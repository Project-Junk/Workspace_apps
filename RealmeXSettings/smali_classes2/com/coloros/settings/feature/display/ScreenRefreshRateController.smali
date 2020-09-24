.class public Lcom/coloros/settings/feature/display/ScreenRefreshRateController;
.super Lcom/android/settingslib/core/a;
.source "ScreenRefreshRateController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# instance fields
.field private a:Landroidx/preference/PreferenceCategory;

.field private b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private c:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance p1, Lcom/coloros/settings/feature/display/ScreenRefreshRateController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController$1;-><init>(Lcom/coloros/settings/feature/display/ScreenRefreshRateController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->c:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/ScreenRefreshRateController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/ScreenRefreshRateController;Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->a(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V

    return-void
.end method

.method private a(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_osie_category"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->a:Landroidx/preference/PreferenceCategory;

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->a:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->isAvailable()Z

    move-result p1

    .line 1074
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->a:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 1078
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->a(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V

    return-void

    .line 1080
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 1081
    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    :cond_4
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "screen_refresh_rate"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 97
    invoke-static {}, Lcom/coloros/settings/utils/bh;->p()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 102
    :goto_0
    iget-object v4, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "coloros_screen_refresh_rate"

    invoke-static {v4, v5, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->mContext:Landroid/content/Context;

    const v1, 0x7f121308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->mContext:Landroid/content/Context;

    const v1, 0x7f121306

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->mContext:Landroid/content/Context;

    const v1, 0x7f121307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_5

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->mContext:Landroid/content/Context;

    const v1, 0x7f121304

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sys_force_60Hz"

    .line 130
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->c:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->c:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
