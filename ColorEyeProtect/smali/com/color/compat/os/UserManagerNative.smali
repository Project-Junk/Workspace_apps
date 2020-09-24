.class public Lcom/color/compat/os/UserManagerNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserManagerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUser(Landroid/os/UserManager;Ljava/lang/String;I)Lcom/color/compat/content/pm/UserInfoNative;
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/os/UserManagerWrapper;->createUser(Landroid/os/UserManager;Ljava/lang/String;I)Lcom/color/inner/content/pm/UserInfoWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/color/compat/content/pm/UserInfoNative;

    invoke-direct {p1, p0}, Lcom/color/compat/content/pm/UserInfoNative;-><init>(Lcom/color/inner/content/pm/UserInfoWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "UserManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserInfo(Landroid/os/UserManager;I)Lcom/color/compat/content/pm/UserInfoNative;
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/os/UserManagerWrapper;->getUserInfo(Landroid/os/UserManager;I)Lcom/color/inner/content/pm/UserInfoWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/color/compat/content/pm/UserInfoNative;

    invoke-direct {p1, p0}, Lcom/color/compat/content/pm/UserInfoNative;-><init>(Lcom/color/inner/content/pm/UserInfoWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "UserManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUsers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/color/compat/content/pm/UserInfoNative;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/os/UserManagerWrapper;->getUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/inner/content/pm/UserInfoWrapper;

    new-instance v2, Lcom/color/compat/content/pm/UserInfoNative;

    invoke-direct {v2, v1}, Lcom/color/compat/content/pm/UserInfoNative;-><init>(Lcom/color/inner/content/pm/UserInfoWrapper;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "UserManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isUserIDExist(Landroid/content/Context;I)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/os/UserManagerWrapper;->isUserIDExist(Landroid/content/Context;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "UserManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isUserUnlockingOrUnlocked(Landroid/content/Context;Landroid/os/UserHandle;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/color/inner/os/UserManagerWrapper;->isUserUnlockingOrUnlocked(Landroid/content/Context;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
