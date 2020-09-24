.class public final Lcom/android/settings/enterprise/u;
.super Lcom/android/settings/enterprise/v;
.source "FailedPasswordWipeManagedProfilePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/v;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/settings/enterprise/u;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->n()I

    move-result v0

    return v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "failed_password_wipe_managed_profile"

    return-object v0
.end method
