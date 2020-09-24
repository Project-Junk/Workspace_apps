.class public final Lcom/android/settings/enterprise/x;
.super Lcom/android/settingslib/core/a;
.source "ImePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/enterprise/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/x;->a:Lcom/android/settings/enterprise/o;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "input_method"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/enterprise/x;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/android/settings/enterprise/x;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/enterprise/x;->a:Lcom/android/settings/enterprise/o;

    .line 42
    invoke-interface {v2}, Lcom/android/settings/enterprise/o;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120917

    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
