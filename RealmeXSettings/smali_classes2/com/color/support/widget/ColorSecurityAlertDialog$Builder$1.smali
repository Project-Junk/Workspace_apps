.class Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 111
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$000(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$100(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$000(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$100(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$000(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$300(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;

    move-result-object p1

    const/4 p2, -0x2

    iget-object p3, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$1;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {p3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$200(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;->onSelected(IZ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
