.class public Lcom/color/compat/security/KeyStoreNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyStoreNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGateKeeperAuthToken()[B
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/color/inner/security/KeyStoreWrapper;->getGateKeeperAuthToken()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStoreNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method