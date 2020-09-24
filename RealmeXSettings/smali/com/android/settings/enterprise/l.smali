.class public final Lcom/android/settings/enterprise/l;
.super Lcom/android/settings/enterprise/m;
.source "CaCertsManagedProfilePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/m;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/settings/enterprise/l;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->q()I

    move-result v0

    return v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ca_certs_managed_profile"

    return-object v0
.end method
