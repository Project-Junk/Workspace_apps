.class public Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelRoamingPreferenceController.java"


# static fields
.field private static final KEY_ROAMING:Ljava/lang/String; = "roaming_settings"


# instance fields
.field private mIsCtcc:Z

.field private mPrefRoaming:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "roaming_settings"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->w(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->mIsCtcc:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 42
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->mPrefRoaming:Landroidx/preference/Preference;

    const-string v0, "connect_settings_category"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 44
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->mIsCtcc:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->mPrefRoaming:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->mPrefRoaming:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.ColorMultipleSimActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "INIT_TITLE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p1, "ITEM_TYPE"

    const-string v1, "Preference"

    .line 57
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "TARGET_CLASS"

    const-string v1, "com.android.phone.ColorInternationalRoamSettings"

    .line 58
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;->startActivitySafely(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
