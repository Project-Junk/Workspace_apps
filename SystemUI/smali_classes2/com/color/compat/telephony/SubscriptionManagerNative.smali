.class public Lcom/color/compat/telephony/SubscriptionManagerNative;
.super Ljava/lang/Object;
.source "SubscriptionManagerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubscriptionManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveDataSubscriptionId()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 73
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/color/inner/telephony/SubscriptionManagerWrapper;->getActiveDataSubscriptionId()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscriptionManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 40
    :try_start_0
    invoke-static {}, Lcom/color/inner/telephony/SubscriptionManagerWrapper;->getDefaultVoicePhoneId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscriptionManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getDefaultVoiceSubscriptionInfo(Landroid/telephony/SubscriptionManager;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/telephony/SubscriptionManagerWrapper;->getDefaultVoiceSubscriptionInfo(Landroid/telephony/SubscriptionManager;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SubscriptionManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static setDisplayName(Landroid/telephony/SubscriptionManager;Ljava/lang/String;II)I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 62
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/telephony/SubscriptionManagerWrapper;->setDisplayName(Landroid/telephony/SubscriptionManager;Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SubscriptionManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
