.class public final Lcom/android/settings/enterprise/t;
.super Lcom/android/settings/enterprise/v;
.source "FailedPasswordWipeCurrentUserPreferenceController.java"


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
    iget-object v0, p0, Lcom/android/settings/enterprise/t;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->m()I

    move-result v0

    return v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "failed_password_wipe_current_user"

    return-object v0
.end method
