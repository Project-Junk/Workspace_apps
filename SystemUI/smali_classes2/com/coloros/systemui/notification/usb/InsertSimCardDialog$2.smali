.class Lcom/coloros/systemui/notification/usb/InsertSimCardDialog$2;
.super Ljava/lang/Object;
.source "InsertSimCardDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/InsertSimCardDialog$2;->this$0:Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/InsertSimCardDialog$2;->this$0:Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/InsertSimCardDialog;->finish()V

    return-void
.end method
