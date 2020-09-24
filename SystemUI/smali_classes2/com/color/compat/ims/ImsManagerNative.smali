.class public Lcom/color/compat/ims/ImsManagerNative;
.super Ljava/lang/Object;
.source "ImsManagerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsManagerNative"


# instance fields
.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    .line 37
    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    .line 42
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/color/inner/ims/ImsManagerWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/android/ims/ImsManager;

    invoke-direct {v0, p1, p2}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    goto :goto_0

    .line 47
    :cond_1
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImsManagerNative, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private constructor <init>(Lcom/android/ims/ImsManager;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    .line 37
    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    .line 59
    iput-object p1, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    return-void
.end method

.method private constructor <init>(Lcom/color/inner/ims/ImsManagerWrapper;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    .line 37
    iput-object v0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    .line 55
    iput-object p1, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    return-void
.end method

.method private varargs getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 248
    const-class p0, Lcom/android/ims/ImsManager;

    invoke-static {p0, p1, p2}, Lcom/color/compat/ims/ImsManagerNative;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/color/compat/ims/ImsManagerNative;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 66
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0, p1}, Lcom/color/inner/ims/ImsManagerWrapper;->getInstance(Landroid/content/Context;I)Lcom/color/inner/ims/ImsManagerWrapper;

    move-result-object p0

    .line 68
    new-instance p1, Lcom/color/compat/ims/ImsManagerNative;

    invoke-direct {p1, p0}, Lcom/color/compat/ims/ImsManagerNative;-><init>(Lcom/color/inner/ims/ImsManagerWrapper;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    .line 71
    new-instance p1, Lcom/color/compat/ims/ImsManagerNative;

    invoke-direct {p1, p0}, Lcom/color/compat/ims/ImsManagerNative;-><init>(Lcom/android/ims/ImsManager;)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInstance, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "getMethod"

    const-string v1, "ImsManagerNative"

    .line 255
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, ""

    const-string v1, "ImsManagerNative"

    .line 268
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    .line 277
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 275
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 273
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public isEnhanced4gLteModeSettingEnabledByUser()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p0

    move v0, p0

    goto :goto_1

    .line 180
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isEnhanced4gLteModeSettingEnabledByUser"

    .line 183
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "isEnhanced4gLteModeSettingEnabledByUserForSlot"

    .line 185
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 187
    :goto_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 189
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 192
    :cond_2
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnhanced4gLteModeSettingEnabledByUser, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    const/4 v0, 0x0

    .line 204
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isVolteEnabledByPlatform()Z

    move-result p0

    move v0, p0

    goto :goto_1

    .line 206
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isVolteEnabledByPlatform"

    .line 209
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "isVolteEnabledByPlatformForSlot"

    .line 211
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 213
    :goto_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 215
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 218
    :cond_2
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVolteEnabledByPlatform, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    const/4 v0, 0x0

    .line 100
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isVtEnabledByPlatform()Z

    move-result p0

    move v0, p0

    goto :goto_1

    .line 102
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isVtEnabledByPlatform"

    .line 105
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "isVtEnabledByPlatformForSlot"

    .line 107
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 109
    :goto_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 111
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 114
    :cond_2
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVtEnabledByPlatform, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method

.method public isVtEnabledByUser()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 85
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isVtEnabledByUser()Z

    move-result p0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVtEnabledByUser, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWfcEnabledByPlatform()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    const/4 v0, 0x0

    .line 152
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isWfcEnabledByPlatform()Z

    move-result p0

    move v0, p0

    goto :goto_1

    .line 154
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isWfcEnabledByPlatform"

    .line 157
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "isWfcEnabledByPlatformForSlot"

    .line 159
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 161
    :goto_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 163
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 166
    :cond_2
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfcEnabledByPlatform, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method

.method public isWfcEnabledByUser()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0}, Lcom/color/inner/ims/ImsManagerWrapper;->isWfcEnabledByUser()Z

    move-result p0

    move v0, p0

    goto :goto_1

    .line 128
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isWfcEnabledByUser"

    .line 131
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "isWfcEnabledByUserForSlot"

    .line 133
    new-array v2, v0, [Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 135
    :goto_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/color/compat/ims/ImsManagerNative;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 137
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 140
    :cond_2
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfcEnabledByUser, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImsManagerNative"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method

.method public setEnhanced4gLteModeSetting(Z)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 229
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManagerWrapper:Lcom/color/inner/ims/ImsManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/ims/ImsManagerWrapper;->setEnhanced4gLteModeSetting(Z)V

    goto :goto_1

    .line 231
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isN()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string p1, "setEnhanced4gLteModeSetting"

    .line 234
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "setEnhanced4gLteModeSettingForSlot"

    .line 236
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/color/compat/ims/ImsManagerNative;->getImsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 238
    :goto_0
    iget-object p0, p0, Lcom/color/compat/ims/ImsManagerNative;->mImsManager:Lcom/android/ims/ImsManager;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/color/compat/ims/ImsManagerNative;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 240
    :cond_2
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEnhanced4gLteModeSetting, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
