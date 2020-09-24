.class Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;
.super Ljava/lang/Object;
.source "UsbTypeSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;I)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    iput p2, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    iget v0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->setChecked(I)V

    .line 121
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;->this$0:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->access$000(Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;)Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;

    move-result-object p1

    iget p0, p0, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$1;->val$position:I

    invoke-interface {p1, p0}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;->onRadioButtonClick(I)V

    return-void
.end method
