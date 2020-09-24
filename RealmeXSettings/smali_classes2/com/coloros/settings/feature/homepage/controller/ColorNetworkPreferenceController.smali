.class public Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "ColorNetworkPreferenceController.java"


# static fields
.field private static final KEY_NETWORK:Ljava/lang/String; = "network_settings"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SIM_DATA_MANAGE_ACTIVITY_NAME:Ljava/lang/String; = "com.android.simsettings.activity.OppoSimSettingsActivity"

.field private static final TAG:Ljava/lang/String; = "ColorNetworkPreferenceController"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mSimSettingsLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "network_settings"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance p1, Lcom/coloros/settings/feature/homepage/controller/-$$Lambda$ColorNetworkPreferenceController$kRyH6nPHhULiMyKLvHyf0wZVWlY;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/homepage/controller/-$$Lambda$ColorNetworkPreferenceController$kRyH6nPHhULiMyKLvHyf0wZVWlY;-><init>(Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;)V

    invoke-static {p1}, Lcom/coloros/settings/utils/bk;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private getSimSettingActivityLabel()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.simsettings.activity.OppoSimSettingsActivity"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 75
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorNetworkPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$T0y5__4sGMC_9qKqc9Iw7tz7K00(Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->updatePreferenceTitle()V

    return-void
.end method

.method private updatePreferenceTitle()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->mSimSettingsLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->mSimSettingsLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "network_settings"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 57
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->updatePreferenceTitle()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_mobile_networks"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ah;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$new$0$ColorNetworkPreferenceController()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->getSimSettingActivityLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;->mSimSettingsLabel:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/coloros/settings/feature/homepage/controller/-$$Lambda$ColorNetworkPreferenceController$T0y5__4sGMC_9qKqc9Iw7tz7K00;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/homepage/controller/-$$Lambda$ColorNetworkPreferenceController$T0y5__4sGMC_9qKqc9Iw7tz7K00;-><init>(Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method
