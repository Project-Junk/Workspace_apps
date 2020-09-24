.class public Lcom/android/settings/privacy/WorkPolicyInfoPreferenceController;
.super Lcom/android/settings/core/a;
.source "WorkPolicyInfoPreferenceController.java"


# instance fields
.field private final mEnterpriseProvider:Lcom/android/settings/enterprise/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/WorkPolicyInfoPreferenceController;->mEnterpriseProvider:Lcom/android/settings/enterprise/o;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/privacy/WorkPolicyInfoPreferenceController;->mEnterpriseProvider:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/privacy/WorkPolicyInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/android/settings/privacy/WorkPolicyInfoPreferenceController;->mEnterpriseProvider:Lcom/android/settings/enterprise/o;

    invoke-interface {p1}, Lcom/android/settings/enterprise/o;->t()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
