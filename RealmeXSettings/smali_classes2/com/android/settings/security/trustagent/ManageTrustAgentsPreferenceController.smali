.class public Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;
.super Lcom/android/settings/core/a;
.source "ManageTrustAgentsPreferenceController.java"


# static fields
.field static final KEY_MANAGE_TRUST_AGENTS:Ljava/lang/String; = "manage_trust_agents"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MY_USER_ID:I


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTrustAgentManager:Lcom/android/settings/security/trustagent/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "manage_trust_agents"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v0

    .line 44
    invoke-interface {v0, p1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    invoke-interface {v0}, Lcom/android/settings/security/f;->a()Lcom/android/settings/security/trustagent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/b;

    return-void
.end method

.method private getTrustAgentCount()I
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/settings/security/trustagent/b;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 56
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->getTrustAgentCount()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f1207ea

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 61
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 62
    iget-object v3, p0, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10002c

    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    .line 62
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 66
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f120d19

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
