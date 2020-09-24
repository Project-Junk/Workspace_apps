.class public Lcom/color/compat/content/pm/UserInfoNative;
.super Ljava/lang/Object;
.source "UserInfoNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserInfoNative"


# instance fields
.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iput-object p1, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    return-void

    .line 65
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserInfoNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/color/inner/content/pm/UserInfoWrapper;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    return-void

    .line 47
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserInfoNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 75
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/UserInfoWrapper;->getId()I

    move-result v0

    return v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0

    .line 84
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserInfoNative"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 95
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/color/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 104
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserInfoNative"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method