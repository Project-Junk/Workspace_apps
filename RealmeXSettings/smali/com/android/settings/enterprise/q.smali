.class public final Lcom/android/settings/enterprise/q;
.super Lcom/android/settingslib/core/a;
.source "EnterprisePrivacyPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/enterprise/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/q;->a:Lcom/android/settings/enterprise/o;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "enterprise_privacy"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/enterprise/q;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->a()Z

    move-result v0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/q;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f120920

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/q;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120921

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
