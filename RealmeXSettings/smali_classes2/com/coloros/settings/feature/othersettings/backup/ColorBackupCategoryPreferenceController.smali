.class public Lcom/coloros/settings/feature/othersettings/backup/ColorBackupCategoryPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorBackupCategoryPreferenceController.java"


# static fields
.field private static final BACKUP_CATEGORY:Ljava/lang/String; = "backup_category"

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "backup_category"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "backup_category"

    .line 36
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupCategoryPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    instance-of p1, v0, Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz p1, :cond_1

    .line 42
    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorPreferenceCategory;->a()V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupCategoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.google.settings"

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    return v1
.end method
