.class Lcom/coloros/systemui/notification/usb/UsbService$1;
.super Landroid/os/Handler;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/usb/UsbService;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "UsbService"

    const-string v2, "Common"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, " mNoTransmitting"

    .line 202
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0, v3}, Lcom/coloros/systemui/notification/usb/UsbService;->access$402(Lcom/coloros/systemui/notification/usb/UsbService;Z)Z

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "two:display adb debug notify! and mUsbConnected = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {v3}, Lcom/coloros/systemui/notification/usb/UsbService;->access$100(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$100(Lcom/coloros/systemui/notification/usb/UsbService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$200(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 184
    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$202(Lcom/coloros/systemui/notification/usb/UsbService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$200(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->isZQVersionAdbEnable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 191
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$200(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/app/NotificationManager;

    move-result-object p0

    const/16 v0, 0x2714

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/Notification;

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_5
    :goto_0
    return-void
.end method
