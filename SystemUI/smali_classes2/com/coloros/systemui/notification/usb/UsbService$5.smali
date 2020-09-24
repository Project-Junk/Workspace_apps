.class Lcom/coloros/systemui/notification/usb/UsbService$5;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/usb/UsbService;->showUsbDialog(Z)V
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

    .line 788
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$5;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioButtonClick(I)V
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$5;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->onUsbSelect(I)V

    .line 794
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$5;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->delayDismiss()V

    return-void
.end method
