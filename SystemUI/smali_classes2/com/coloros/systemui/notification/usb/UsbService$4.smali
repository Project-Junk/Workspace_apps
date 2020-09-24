.class Lcom/coloros/systemui/notification/usb/UsbService$4;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$force:Z

.field final synthetic val$selectType:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/usb/UsbService;ZI)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    iput-boolean p2, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->val$force:Z

    iput p3, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->val$selectType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 769
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->access$1300(Lcom/coloros/systemui/notification/usb/UsbService;)Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->setChecked(I)V

    .line 770
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/usb/UsbService;->onUsbSelect(I)V

    .line 773
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->delayDismiss()V

    .line 779
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->val$force:Z

    if-eqz p1, :cond_0

    .line 780
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbStatistics;->getInstance()Lcom/coloros/systemui/notification/usb/UsbStatistics;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->val$selectType:I

    invoke-virtual {p1, v0, p0, p2}, Lcom/coloros/systemui/notification/usb/UsbStatistics;->collectUsbNotificationClickStatistic(Landroid/content/Context;II)V

    goto :goto_0

    .line 782
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/usb/UsbStatistics;->getInstance()Lcom/coloros/systemui/notification/usb/UsbStatistics;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService$4;->this$0:Lcom/coloros/systemui/notification/usb/UsbService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/coloros/systemui/notification/usb/UsbStatistics;->collectUsbInsertStatistic(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
