.class public Lcom/color/compat/telecom/TelecomManagerNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TelecomManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNewOutgoingCall(Landroid/telecom/TelecomManager;Landroid/content/Intent;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/telecom/TelecomManagerWrapper;->addNewOutgoingCall(Landroid/telecom/TelecomManager;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelecomManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static colorInteractWithTelecomService(Landroid/telecom/TelecomManager;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/telecom/TelecomManagerWrapper;->colorInteractWithTelecomService(Landroid/telecom/TelecomManager;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelecomManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static oppoCancelMissedCallsNotification(Landroid/telecom/TelecomManager;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/telecom/TelecomManagerWrapper;->oppoCancelMissedCallsNotification(Landroid/telecom/TelecomManager;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelecomManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
