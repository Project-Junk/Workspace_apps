.class public Lcom/color/compat/telephony/SmsManagerNative;
.super Ljava/lang/Object;
.source "SmsManagerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyMessageToIcc(Landroid/telephony/SmsManager;[B[BI)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 49
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/telephony/SmsManagerWrapper;->copyMessageToIcc(Landroid/telephony/SmsManager;[B[BI)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static deleteMessageFromIcc(Landroid/telephony/SmsManager;I)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 60
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/telephony/SmsManagerWrapper;->deleteMessageFromIcc(Landroid/telephony/SmsManager;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getAllMessagesFromIcc(Landroid/telephony/SmsManager;)Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/telephony/SmsManagerWrapper;->getAllMessagesFromIcc(Landroid/telephony/SmsManager;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmsManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
