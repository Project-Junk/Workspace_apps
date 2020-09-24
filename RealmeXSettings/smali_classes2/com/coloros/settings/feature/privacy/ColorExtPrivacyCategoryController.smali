.class public Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;
.super Lcom/android/settings/core/a;
.source "ColorExtPrivacyCategoryController.java"


# static fields
.field public static final KEY_TRUST_AGENT:Ljava/lang/String; = "trust_agent"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPrivacyGroup:Landroidx/preference/PreferenceGroup;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/f;

.field private mTrustAgentManager:Lcom/android/settings/security/trustagent/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mPrivacyGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method private getSecurityFeatureProvider()Lcom/android/settings/security/f;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mSecurityFeatureProvider:Lcom/android/settings/security/f;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mSecurityFeatureProvider:Lcom/android/settings/security/f;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mSecurityFeatureProvider:Lcom/android/settings/security/f;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mPrivacyGroup:Landroidx/preference/PreferenceGroup;

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mPrivacyGroup:Landroidx/preference/PreferenceGroup;

    if-nez p1, :cond_1

    return-void

    .line 63
    :cond_1
    new-instance p1, Lcom/coloros/settings/feature/privacy/-$$Lambda$ColorExtPrivacyCategoryController$R4oWutZycnTfATrchzMMckyGkLQ;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/privacy/-$$Lambda$ColorExtPrivacyCategoryController$R4oWutZycnTfATrchzMMckyGkLQ;-><init>(Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;)V

    invoke-static {p1}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 50
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public synthetic lambda$displayPreference$1$ColorExtPrivacyCategoryController()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/b;

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/security/f;->a()Lcom/android/settings/security/trustagent/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/b;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/settings/security/trustagent/b;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/trustagent/b$a;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 78
    :goto_0
    new-instance v1, Lcom/coloros/settings/feature/privacy/-$$Lambda$ColorExtPrivacyCategoryController$AHEnX5oNAaRXdFWA06aRrnFCZPE;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/privacy/-$$Lambda$ColorExtPrivacyCategoryController$AHEnX5oNAaRXdFWA06aRrnFCZPE;-><init>(Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;Lcom/android/settings/security/trustagent/b$a;)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$null$0$ColorExtPrivacyCategoryController(Lcom/android/settings/security/trustagent/b$a;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mPrivacyGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 87
    new-instance v2, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mPrivacyGroup:Landroidx/preference/PreferenceGroup;

    .line 88
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "trust_agent"

    .line 89
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 90
    iget-object v3, p1, Lcom/android/settings/security/trustagent/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p1, Lcom/android/settings/security/trustagent/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    const v3, 0x7f0d00a7

    .line 92
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setLayoutResource(I)V

    .line 94
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 95
    iget-object v4, p1, Lcom/android/settings/security/trustagent/b$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    .line 96
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 99
    iget-object v3, p0, Lcom/coloros/settings/feature/privacy/ColorExtPrivacyCategoryController;->mPrivacyGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 101
    iget-object p1, p1, Lcom/android/settings/security/trustagent/b$a;->d:Lcom/android/settingslib/g$a;

    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 1153
    iget-object p1, v2, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean p1, p1, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-nez p1, :cond_2

    if-nez v1, :cond_2

    .line 103
    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setEnabled(Z)V

    const p1, 0x7f1207ea

    .line 104
    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setSummary(I)V

    :cond_2
    return-void
.end method
