.class public final Lcom/android/settings/enterprise/w;
.super Lcom/android/settingslib/core/a;
.source "GlobalHttpProxyPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/enterprise/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/w;->a:Lcom/android/settings/enterprise/o;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "global_http_proxy"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settings/enterprise/w;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->l()Z

    move-result v0

    return v0
.end method
