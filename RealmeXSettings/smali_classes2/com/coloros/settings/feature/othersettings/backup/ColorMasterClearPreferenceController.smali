.class public Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorMasterClearPreferenceController.java"


# static fields
.field public static final KEY_MASTER_CLEAR:Ljava/lang/String; = "master_clear"

.field private static final KEY_PERSONAL_DATA_CATEGORY:Ljava/lang/String; = "personal_data_category"

.field private static final TAG:Ljava/lang/String; = "ColorMasterClearPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "master_clear"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private saleModeDisableMasterClear(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "master_clear"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 66
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_0
    const-string v0, "com.coloros.settings.feature.othersettings.recover.RecoveryDataMainFragment"

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "personal_data_category"

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_factory_reset"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 49
    :try_start_0
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/coloros/b/b;->a()Landroid/content/pm/OppoPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorMasterClearPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 60
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;->saleModeDisableMasterClear(Landroidx/preference/PreferenceScreen;)V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
