.class final synthetic Lcom/android/settings/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 148
    invoke-static {}, Lcom/android/settings/TrustedCredentialsSettings$f;->values()[Lcom/android/settings/TrustedCredentialsSettings$f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$3;->a:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$3;->a:[I

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$f;->a:Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$3;->a:[I

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$f;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
