.class public Lcom/color/compat/os/UserHandleNative;
.super Ljava/lang/Object;


# static fields
.field public static CURRENT:Landroid/os/UserHandle; = null

.field public static OWNER:Landroid/os/UserHandle; = null

.field public static TAG:Ljava/lang/String; = "UserHandleNative"

.field public static USER_ALL:I

.field public static USER_CURRENT:I

.field public static USER_SYSTEM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/color/inner/os/UserHandleWrapper;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/color/compat/os/UserHandleNative;->OWNER:Landroid/os/UserHandle;

    const/4 v0, -0x2

    sput v0, Lcom/color/compat/os/UserHandleNative;->USER_CURRENT:I

    const/4 v0, -0x1

    sput v0, Lcom/color/compat/os/UserHandleNative;->USER_ALL:I

    sget-object v0, Lcom/color/inner/os/UserHandleWrapper;->CURRENT:Landroid/os/UserHandle;

    sput-object v0, Lcom/color/compat/os/UserHandleNative;->CURRENT:Landroid/os/UserHandle;

    const/4 v0, 0x0

    sput v0, Lcom/color/compat/os/UserHandleNative;->USER_SYSTEM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUserHandle(I)Landroid/os/UserHandle;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/UserHandleWrapper;->createUserHandle(I)Landroid/os/UserHandle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/color/compat/os/UserHandleNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIdentifier(Landroid/os/UserHandle;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/UserHandleWrapper;->getIdentifier(Landroid/os/UserHandle;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/color/compat/os/UserHandleNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getUserId(I)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/UserHandleWrapper;->getUserId(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/color/compat/os/UserHandleNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static myUserId()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/color/inner/os/UserHandleWrapper;->myUserId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/color/compat/os/UserHandleNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method
