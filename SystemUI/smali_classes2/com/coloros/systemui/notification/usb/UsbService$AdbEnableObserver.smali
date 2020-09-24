.class Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;
.super Landroid/database/ContentObserver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/usb/UsbService;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    .line 1009
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1015
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p1

    const-string v0, "UsbService"

    const-string v1, "Common"

    if-eqz p1, :cond_0

    .line 1016
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdbEnableObserver_onChange() "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "adb_enabled"

    .line 1018
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1019
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/coloros/systemui/notification/usb/UsbService;->updateAdbNotification(Landroid/content/Context;)V

    .line 1021
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1400(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ZQ_ADB_ENABLED"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1022
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->isZQVersionAdbEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1023
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "AdbEnableObserver_onChange() SETTING_ZQ_ADB_ENABLED cancelZQVersionAdbNotify"

    .line 1024
    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->cancelZQVersionAdbNotify()V

    goto :goto_0

    .line 1029
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "AdbEnableObserver_onChange() SETTING_ZQ_ADB_ENABLED updateAdbNotificationAdv"

    .line 1030
    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/coloros/systemui/notification/usb/UsbService;->updateAdbNotification(Landroid/content/Context;)V

    .line 1036
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1400(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "MTP_TRANSFER_ENABLED"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1037
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->isZQVersionUsbEnable()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1038
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "AdbEnableObserver_onChange() SETTING_MTP_TRANSFER_ENABLED cancelZQVersionUsbNotify"

    .line 1039
    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_6
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->cancelZQVersionUsbNotify()V

    goto :goto_1

    .line 1044
    :cond_7
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "AdbEnableObserver_onChange() SETTING_MTP_TRANSFER_ENABLED sendBroadcast(ACTION_FILE_TRANSMIT)"

    .line 1045
    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_8
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oppo.test.file.transmit"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
