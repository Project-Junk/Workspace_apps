.class Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$5;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->create()Lcom/color/support/widget/ColorSecurityAlertDialog;
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

    .line 500
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$5;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 503
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$5;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$000(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$300(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$5;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$000(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$300(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$5;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$200(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;->onSelected(IZ)V

    :cond_0
    return-void
.end method
