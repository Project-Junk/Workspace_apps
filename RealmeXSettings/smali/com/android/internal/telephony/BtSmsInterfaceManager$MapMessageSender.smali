.class Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;
.super Ljava/lang/Object;
.source "BtSmsInterfaceManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/BtSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapMessageSender"
.end annotation


# instance fields
.field final mDeliveryIntent:Landroid/app/PendingIntent;

.field final mDestAddr:[Landroid/net/Uri;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mMessage:Ljava/lang/String;

.field final mSentIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/internal/telephony/BtSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/BtSmsInterfaceManager;Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->this$0:Lcom/android/internal/telephony/BtSmsInterfaceManager;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 86
    new-array p1, p1, [Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 87
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo v0, "tel"

    .line 88
    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDestAddr:[Landroid/net/Uri;

    .line 90
    iput-object p3, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 92
    iput-object p5, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mSentIntent:Landroid/app/PendingIntent;

    .line 93
    iput-object p6, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 8

    const-string v0, "BtSmsInterfaceManager"

    const-string v1, "Service connected"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    return-void

    .line 102
    :cond_0
    move-object p1, p2

    check-cast p1, Landroid/bluetooth/BluetoothMapClient;

    .line 103
    iget-object p2, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "Sending message thru bluetooth"

    .line 104
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDestAddr:[Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/BluetoothMapClient;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    const/4 p2, 0x0

    .line 106
    iput-object p2, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    .line 108
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 109
    invoke-virtual {p2, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 114
    iget-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "BtSmsInterfaceManager"

    const-string v0, "Bluetooth disconnected before sending the message"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->this$0:Lcom/android/internal/telephony/BtSmsInterfaceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/BtSmsInterfaceManager;Landroid/app/PendingIntent;I)V

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method
