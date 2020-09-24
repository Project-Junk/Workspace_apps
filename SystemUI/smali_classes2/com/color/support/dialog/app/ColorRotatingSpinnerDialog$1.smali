.class Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog$1;
.super Ljava/lang/Object;
.source "ColorRotatingSpinnerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;


# direct methods
.method constructor <init>(Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog$1;->this$0:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog$1;->this$0:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-static {p2}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->access$000(Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 103
    iget-object p0, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog$1;->this$0:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-static {p0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->access$000(Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
