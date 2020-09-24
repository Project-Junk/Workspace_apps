.class public Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "UseOpenWifiPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/ContentResolver;

.field b:Landroid/content/ComponentName;

.field private final c:Landroidx/fragment/app/Fragment;

.field private final d:Landroid/net/NetworkScoreManager;

.field private final e:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;

.field private f:Landroidx/preference/Preference;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a:Landroid/content/ContentResolver;

    .line 56
    iput-object p2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->c:Landroidx/fragment/app/Fragment;

    const-string p2, "network_score"

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScoreManager;

    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->d:Landroid/net/NetworkScoreManager;

    .line 59
    new-instance p1, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;-><init>(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->e:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a()V

    .line 1072
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b:Landroid/content/ComponentName;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 1073
    iput-boolean p2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->g:Z

    goto :goto_0

    .line 1076
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->d:Landroid/net/NetworkScoreManager;

    invoke-virtual {p1}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object p1

    .line 1077
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppData;

    .line 1078
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1079
    iput-boolean p2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->g:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1083
    iput-boolean p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->g:Z

    .line 62
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->d:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->f:Landroidx/preference/Preference;

    return-object p0
.end method

.method private b()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a:Landroid/content/ContentResolver;

    const-string v1, "use_open_wifi_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "use_open_wifi_automatically"

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->f:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "use_open_wifi_automatically"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->g:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->e:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a:Landroid/content/ContentResolver;

    .line 1190
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "use_open_wifi_automatically"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a:Landroid/content/ContentResolver;

    const-string p2, "use_open_wifi_package"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    .line 150
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->c:Landroidx/fragment/app/Fragment;

    const/16 v1, 0x190

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return p2
.end method

.method public onResume()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->e:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a:Landroid/content/ContentResolver;

    .line 1185
    iget-object v2, v0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1186
    iget-object v1, v0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 114
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->d:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 122
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setVisible(Z)V

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 124
    :goto_2
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    if-nez v0, :cond_4

    const v0, 0x7f1217e7

    .line 127
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    return-void

    :cond_4
    if-nez v3, :cond_5

    const v0, 0x7f1217e6

    .line 130
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    return-void

    :cond_5
    const v0, 0x7f1217e5

    .line 133
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    return-void
.end method
