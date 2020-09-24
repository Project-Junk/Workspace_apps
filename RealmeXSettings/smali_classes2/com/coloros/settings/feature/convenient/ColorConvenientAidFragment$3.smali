.class final Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;
.super Lcom/android/settingslib/core/a;
.source "ColorConvenientAidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 116
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 117
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    invoke-static {}, Lcom/coloros/settings/utils/bh;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120bd7

    .line 121
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "oppo.intent.action.SCREENASSISTANT_SETTINGS"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;->mContext:Landroid/content/Context;

    const-string v2, "com.coloros.edgepanel.settings.EdgePanelSettingsActivity"

    const-string v3, "com.coloros.smartsidebar"

    invoke-static {v1, v3, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v1, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;->mContext:Landroid/content/Context;

    const-string v3, "com.coloros.floatassistant"

    invoke-static {v1, v3, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "oppo.intent.action.EDGEPANEL"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "land_scape_assistant"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->k()Z

    move-result v0

    .line 146
    iget-object v2, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;->mContext:Landroid/content/Context;

    const-string v3, "com.coloros.edgepanel.settings.EdgePanelSettingsActivity"

    const-string v4, "com.coloros.smartsidebar"

    invoke-static {v2, v4, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    iget-object v2, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;->mContext:Landroid/content/Context;

    const-string v4, "com.coloros.floatassistant"

    invoke-static {v2, v4, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAvailable: isSystemEdgePanel: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorConvenientAidFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
