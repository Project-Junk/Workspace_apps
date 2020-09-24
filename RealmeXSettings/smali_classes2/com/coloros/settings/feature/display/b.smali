.class public final Lcom/coloros/settings/feature/display/b;
.super Lcom/android/settingslib/core/a;
.source "ScreenResolutionController.java"


# instance fields
.field private a:Landroidx/preference/PreferenceCategory;

.field private b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_osie_category"

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/b;->a:Landroidx/preference/PreferenceCategory;

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/display/b;->a:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/b;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/b;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/b;->isAvailable()Z

    move-result p1

    .line 1066
    iget-object v0, p0, Lcom/coloros/settings/feature/display/b;->a:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/coloros/settings/feature/display/b;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    .line 1079
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/b;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1081
    invoke-virtual {v1, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    .line 1072
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 1073
    iput-object p1, p0, Lcom/coloros/settings/feature/display/b;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    :cond_5
    :goto_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "screen_resolution"

    return-object v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/feature/display/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "coloros_screen_resolution_adjust"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/display/b;->mContext:Landroid/content/Context;

    const v1, 0x7f121310

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/display/b;->mContext:Landroid/content/Context;

    const v1, 0x7f121308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/b;->mContext:Landroid/content/Context;

    const v1, 0x7f121312

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/coloros/settings/utils/bh;->o()Z

    move-result v0

    return v0
.end method
