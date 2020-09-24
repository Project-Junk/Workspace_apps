.class Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$2;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"

# interfaces
.implements Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;


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

    .line 405
    iput-object p1, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$2;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$2;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$000(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$800(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder$2;->this$0:Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->access$000(Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;)Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->access$800(Lcom/color/support/widget/ColorSecurityAlertDialog;)Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;->onLinkTextClick()V

    :cond_0
    return-void
.end method
