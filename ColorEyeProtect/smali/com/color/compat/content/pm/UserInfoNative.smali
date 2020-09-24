.class public Lcom/color/compat/content/pm/UserInfoNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserInfoNative"


# instance fields
.field private user:Lcom/color/inner/content/pm/UserInfoWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/color/inner/content/pm/UserInfoWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/compat/content/pm/UserInfoNative;->user:Lcom/color/inner/content/pm/UserInfoWrapper;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->user:Lcom/color/inner/content/pm/UserInfoWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/content/pm/UserInfoNative;->user:Lcom/color/inner/content/pm/UserInfoWrapper;

    invoke-virtual {p0}, Lcom/color/inner/content/pm/UserInfoWrapper;->getId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "UserInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->user:Lcom/color/inner/content/pm/UserInfoWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/content/pm/UserInfoNative;->user:Lcom/color/inner/content/pm/UserInfoWrapper;

    invoke-virtual {p0}, Lcom/color/inner/content/pm/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "UserInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
