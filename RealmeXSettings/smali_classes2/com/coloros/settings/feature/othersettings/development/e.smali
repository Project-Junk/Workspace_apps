.class public Lcom/coloros/settings/feature/othersettings/development/e;
.super Lcom/android/settingslib/development/b;
.source "ColorSystemTracingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field a:Landroidx/preference/PreferenceCategory;

.field private b:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;
    .locals 5

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.android.traceur"

    const/16 v1, 0x81

    .line 113
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_1

    .line 116
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    const-string v3, "com.android.traceur.MainActivity"

    .line 120
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 9

    const-string v0, "com.android.settings.summary"

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/e;->b:Landroidx/preference/PreferenceScreen;

    .line 1062
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/e;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1064
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/e;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/development/e;->a(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    const-string v2, "ColorSystemTracingPreferenceController"

    const-string v3, "com.android.traceur"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/16 v5, 0x80

    .line 1067
    :try_start_0
    invoke-virtual {p1, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 1069
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error occur, e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v5, v4

    :goto_0
    const/4 v6, 0x0

    const-string v7, "system_tracing_category"

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 1073
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1075
    :try_start_1
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1076
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1077
    invoke-virtual {v1, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1079
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1080
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1081
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1083
    :cond_1
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1086
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1087
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/e;->b:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/e;->a:Landroidx/preference/PreferenceCategory;

    .line 1088
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/e;->b:Landroidx/preference/PreferenceScreen;

    const-string v1, "system_tracing"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1090
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1091
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.traceur.MainActivity"

    .line 1092
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x1

    move v6, p1

    goto :goto_2

    :catch_1
    const-string p1, "configSystemTracing null !"

    .line 1097
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 1101
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/e;->b:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "system_tracing_category"

    return-object v0
.end method

.method public final l_()V
    .locals 2

    .line 141
    invoke-super {p0}, Lcom/android/settingslib/development/b;->l_()V

    .line 142
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/e;->a:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/e;->b:Landroidx/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public final m_()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 134
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/e;->a:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/e;->b:Landroidx/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
