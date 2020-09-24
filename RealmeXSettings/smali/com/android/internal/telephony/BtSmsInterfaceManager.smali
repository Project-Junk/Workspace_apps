.class public Lcom/android/internal/telephony/BtSmsInterfaceManager;
.super Ljava/lang/Object;
.source "BtSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BtSmsInterfaceManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/BtSmsInterfaceManager;Landroid/app/PendingIntent;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "PendingIntent.CanceledException: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtSmsInterfaceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public sendText(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/telephony/SubscriptionInfo;)V
    .locals 10

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {p5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-nez v7, :cond_1

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Bluetooth device addr invalid: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtSmsInterfaceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 57
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    new-instance v1, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;-><init>(Lcom/android/internal/telephony/BtSmsInterfaceManager;Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const/16 p1, 0x12

    invoke-virtual {v0, p5, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method
