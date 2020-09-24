.class public Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;
.super Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;
.source "ColorTrustAgentListPreferenceController.java"


# instance fields
.field private e:Lcom/coloros/settings/feature/security/ColorSecuritySettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/security/ColorSecuritySettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 39
    iput-object p2, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->e:Lcom/coloros/settings/feature/security/ColorSecuritySettings;

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/security/trustagent/b$a;

    .line 81
    new-instance v2, Lcom/android/settingslib/RestrictedPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    .line 82
    invoke-virtual {v3}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "trust_agent"

    .line 83
    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 84
    iget-object v3, v1, Lcom/android/settings/security/trustagent/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, v1, Lcom/android/settings/security/trustagent/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/settings/security/trustagent/b$a;->a:Landroid/content/ComponentName;

    .line 88
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 87
    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 89
    iget-object v1, v1, Lcom/android/settings/security/trustagent/b$a;->d:Lcom/android/settingslib/g$a;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 90
    invoke-virtual {v2}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const v1, 0x7f1207ea

    .line 92
    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->e:Lcom/coloros/settings/feature/security/ColorSecuritySettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a(Landroidx/preference/PreferenceCategory;)V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->e:Lcom/coloros/settings/feature/security/ColorSecuritySettings;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->a(Landroidx/preference/PreferenceCategory;)V

    :cond_1
    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/settings/security/trustagent/b;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/coloros/settings/feature/security/controller/-$$Lambda$ColorTrustAgentListPreferenceController$HR665qZIx7qwVPOTYW-1pwopB9o;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$ColorTrustAgentListPreferenceController$HR665qZIx7qwVPOTYW-1pwopB9o;-><init>(Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;Ljava/util/List;)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$HR665qZIx7qwVPOTYW-1pwopB9o(Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$e77Bx5XXo6X1w9IJzwCw9vVxhnc(Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    const-string v1, "trust_agent"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->c:Lcom/android/settings/security/trustagent/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_3

    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$ColorTrustAgentListPreferenceController$e77Bx5XXo6X1w9IJzwCw9vVxhnc;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$ColorTrustAgentListPreferenceController$e77Bx5XXo6X1w9IJzwCw9vVxhnc;-><init>(Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    :goto_1
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->b()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->onResume()V

    .line 51
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/ColorTrustAgentListPreferenceController;->b()V

    return-void
.end method
