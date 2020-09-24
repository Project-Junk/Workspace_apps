.class public final Lcom/android/settings/security/h;
.super Lcom/android/settings/security/e;
.source "UserCredentialsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "no_config_credentials"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "user_credentials"

    return-object v0
.end method
