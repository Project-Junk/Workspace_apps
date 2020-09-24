.class Lcom/coloros/systemui/notification/usb/UsbService$2;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/usb/UsbService;->delayDismiss()V
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

    .line 292
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$2;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$2;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$500(Lcom/coloros/systemui/notification/usb/UsbService;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method
