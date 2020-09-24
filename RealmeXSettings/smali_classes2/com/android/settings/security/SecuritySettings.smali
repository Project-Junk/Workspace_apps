.class public Lcom/android/settings/security/SecuritySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecuritySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/android/settings/security/SecuritySettings$1;

    invoke-direct {v0}, Lcom/android/settings/security/SecuritySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/security/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/security/SecuritySettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v1, Lcom/android/settings/enterprise/q;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/q;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/android/settings/security/SimLockPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/android/settings/security/EncryptionStatusPreferenceController;

    const-string v2, "encryption_and_credential"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/EncryptionStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v2, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Lcom/android/settings/security/b;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/security/b;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v3, "security_category"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v2

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v2, Lcom/android/settings/security/a;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/security/a;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/security/LockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p2, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p1, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string p2, "security_category_profile"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p0

    .line 133
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, v0, v0}, Lcom/android/settings/security/SecuritySettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "SecuritySettings"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/android/settings/security/SecuritySettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ac3

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15010d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-class v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/SecuritySettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/SecuritySettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    const/16 v1, 0x82

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 1149
    invoke-virtual {v0}, Lcom/android/settings/security/LockUnificationPreferenceController;->a()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x80

    const-string v4, "password"

    if-ne p1, v1, :cond_2

    if-ne p2, v3, :cond_2

    .line 1154
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/security/LockUnificationPreferenceController;->c:[B

    .line 1155
    invoke-virtual {v0}, Lcom/android/settings/security/LockUnificationPreferenceController;->b()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x81

    if-ne p1, v1, :cond_3

    if-ne p2, v3, :cond_3

    .line 1160
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/security/LockUnificationPreferenceController;->d:[B

    .line 1161
    invoke-virtual {v0}, Lcom/android/settings/security/LockUnificationPreferenceController;->c()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    return-void

    .line 95
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
