.class public final Lcom/android/settings/enterprise/g;
.super Lcom/android/settingslib/core/a;
.source "AlwaysOnVpnCurrentUserPreferenceController.java"

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

    iput-object p1, p0, Lcom/android/settings/enterprise/g;->a:Lcom/android/settings/enterprise/o;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "always_on_vpn_primary_user"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/enterprise/g;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->j()Z

    move-result v0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/enterprise/g;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120904

    goto :goto_0

    :cond_0
    const v0, 0x7f120903

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
