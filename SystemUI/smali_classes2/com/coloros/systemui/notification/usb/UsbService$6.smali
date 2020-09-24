.class Lcom/coloros/systemui/notification/usb/UsbService$6;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/usb/UsbService;->updateAdbNotification(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/usb/UsbService;

.field final synthetic val$status:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/usb/UsbService;Landroid/app/Notification;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$6;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    iput-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$6;->val$status:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$6;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1000(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService$6;->val$status:Landroid/app/Notification;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 972
    iput v1, v0, Landroid/os/Message;->what:I

    .line 974
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$6;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1000(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x32

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
