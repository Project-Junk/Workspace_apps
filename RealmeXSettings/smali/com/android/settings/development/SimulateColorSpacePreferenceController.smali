.class public Lcom/android/settings/development/SimulateColorSpacePreferenceController;
.super Lcom/android/settingslib/development/b;
.source "SimulateColorSpacePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "accessibility_display_daltonizer_enabled"

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 101
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 104
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "accessibility_display_daltonizer"

    .line 106
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "simulate_color_space"

    return-object v0
.end method

.method public final k_()V
    .locals 5

    .line 65
    invoke-super {p0}, Lcom/android/settingslib/development/b;->k_()V

    .line 1115
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_display_daltonizer_enabled"

    .line 1116
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v4, -0x1

    if-eqz v2, :cond_1

    const-string v2, "accessibility_display_daltonizer"

    .line 1120
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1123
    iget-object v2, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->d:Landroidx/preference/Preference;

    check-cast v2, Landroidx/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 54
    invoke-direct {p0, p2}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 1072
    iget-object p1, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "accessibility_display_daltonizer_enabled"

    .line 1073
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1076
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->d:Landroidx/preference/Preference;

    check-cast v3, Landroidx/preference/ListPreference;

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    const-string v1, "accessibility_display_daltonizer"

    .line 1078
    invoke-static {p1, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1081
    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    .line 1084
    iget-object p1, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120697

    .line 1086
    new-array v2, v2, [Ljava/lang/Object;

    const v4, 0x7f12005d

    .line 1087
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1086
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string p1, "%s"

    .line 1089
    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 1093
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1092
    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
