.class public Lcom/color/compat/os/UserHandleNative;
.super Ljava/lang/Object;
.source "UserHandleNative.java"


# static fields
.field public static CURRENT:Landroid/os/UserHandle; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end field

.field public static OWNER:Landroid/os/UserHandle; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "UserHandleNative"

.field public static USER_ALL:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation
.end field

.field public static USER_CURRENT:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end field

.field public static USER_SYSTEM:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/color/inner/os/UserHandleWrapper;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/color/compat/os/UserHandleNative;->OWNER:Landroid/os/UserHandle;

    .line 50
    sput v2, Lcom/color/compat/os/UserHandleNative;->USER_CURRENT:I

    .line 51
    sput v1, Lcom/color/compat/os/UserHandleNative;->USER_ALL:I

    .line 52
    sget-object v0, Lcom/color/inner/os/UserHandleWrapper;->CURRENT:Landroid/os/UserHandle;

    sput-object v0, Lcom/color/compat/os/UserHandleNative;->CURRENT:Landroid/os/UserHandle;

    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/color/util/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sput v2, Lcom/color/compat/os/UserHandleNative;->USER_CURRENT:I

    .line 55
    sput v1, Lcom/color/compat/os/UserHandleNative;->USER_ALL:I

    .line 56
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sput-object v0, Lcom/color/compat/os/UserHandleNative;->CURRENT:Landroid/os/UserHandle;

    .line 57
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/color/compat/os/UserHandleNative;->OWNER:Landroid/os/UserHandle;

    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    sput v2, Lcom/color/compat/os/UserHandleNative;->USER_CURRENT:I

    .line 60
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sput-object v0, Lcom/color/compat/os/UserHandleNative;->CURRENT:Landroid/os/UserHandle;

    .line 61
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/color/compat/os/UserHandleNative;->OWNER:Landroid/os/UserHandle;

    return-void

    .line 63
    :cond_2
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcom/color/compat/os/UserHandleNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUserHandle(I)Landroid/os/UserHandle;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 125
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/color/inner/os/UserHandleWrapper;->createUserHandle(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    invoke-static {}, Lcom/color/util/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0

    .line 130
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 133
    sget-object v0, Lcom/color/compat/os/UserHandleNative;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIdentifier(Landroid/os/UserHandle;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 92
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/color/inner/os/UserHandleWrapper;->getIdentifier(Landroid/os/UserHandle;)I

    move-result p0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/color/util/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    goto :goto_0

    .line 97
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 100
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
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 109
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/color/inner/os/UserHandleWrapper;->getUserId(I)I

    move-result p0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lcom/color/util/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    goto :goto_0

    .line 114
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 117
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
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 74
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/color/inner/os/UserHandleWrapper;->myUserId()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lcom/color/compat/os/UserHandleNative;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method
