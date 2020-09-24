.class public Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorMoreAppsPreferenceController.java"


# static fields
.field private static final KEY_MORE_APPS:Ljava/lang/String; = "more_apps"

.field public static final OTHTER_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.nearme.ocloud"

    const-string v1, "com.coloros.providers.downloads.ui"

    const-string v2, "com.coloros.operationManual"

    const-string v3, "com.oppo.operationManual"

    .line 31
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "more_apps"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private configAssistantSettings(Landroidx/preference/PreferenceScreen;)V
    .locals 8

    const-string v0, "more_apps"

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    .line 55
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    .line 60
    :try_start_0
    sget-object v6, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 66
    sget-object v5, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 67
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v6, Landroid/content/Intent;

    const-string v7, "oppo.intent.action.APP_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    sget-object v7, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIntent(Landroid/content/Intent;)V

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 72
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->handleDownloadsUIClick(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V

    :cond_0
    move v5, v4

    goto :goto_2

    .line 76
    :cond_1
    sget-object v6, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 77
    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz p1, :cond_3

    const v0, 0x7f0d00a7

    .line 83
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    :cond_3
    return-void
.end method

.method private handleDownloadsUIClick(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->configAssistantSettings(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
