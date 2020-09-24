.class public Lorg/codeaurora/internal/ServiceUtil;
.super Ljava/lang/Object;
.source "ServiceUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 4

    const-string p0, "extphone"

    .line 45
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 50
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qualcomm.qti.internal.telephony"

    const-string v3, "com.qualcomm.qti.internal.telephonycom.qualcomm.qti.internal.telephony.ExtTelephonyServiceImpl"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1, p0}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_1
    return v0
.end method

.method public static unbindService(Landroid/content/ServiceConnection;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
