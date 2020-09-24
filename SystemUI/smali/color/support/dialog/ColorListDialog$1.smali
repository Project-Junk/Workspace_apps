.class Lcolor/support/dialog/ColorListDialog$1;
.super Ljava/lang/Object;
.source "ColorListDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/dialog/ColorListDialog;->setupMessage(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/dialog/ColorListDialog;


# direct methods
.method constructor <init>(Lcolor/support/dialog/ColorListDialog;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog$1;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog$1;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-static {v0}, Lcolor/support/dialog/ColorListDialog;->access$000(Lcolor/support/dialog/ColorListDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog$1;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-static {v0}, Lcolor/support/dialog/ColorListDialog;->access$000(Lcolor/support/dialog/ColorListDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog$1;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-static {v0}, Lcolor/support/dialog/ColorListDialog;->access$000(Lcolor/support/dialog/ColorListDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog$1;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-static {v0}, Lcolor/support/dialog/ColorListDialog;->access$000(Lcolor/support/dialog/ColorListDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/dialog/ColorListDialog$1;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-static {v1}, Lcolor/support/dialog/ColorListDialog;->access$000(Lcolor/support/dialog/ColorListDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcolor/support/dialog/ColorListDialog$1;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-static {v0}, Lcolor/support/dialog/ColorListDialog;->access$000(Lcolor/support/dialog/ColorListDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
