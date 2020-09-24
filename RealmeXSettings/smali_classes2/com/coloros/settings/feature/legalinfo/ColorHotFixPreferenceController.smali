.class public Lcom/coloros/settings/feature/legalinfo/ColorHotFixPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorHotFixPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/legalinfo/ColorHotFixPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "coloros_hotfix_category"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    const-string v0, "oppo.hotfix.support"

    .line 35
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/coloros/settings/feature/legalinfo/ColorHotFixPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "disable_hotfix"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x3

    return v0
.end method
