.class Lcolor/support/v7/app/ColorAlertController$4;
.super Ljava/lang/Object;
.source "ColorAlertController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/app/ColorAlertController;->relayoutMessageView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/app/ColorAlertController;

.field final synthetic val$messageView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcolor/support/v7/app/ColorAlertController;Landroid/widget/TextView;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController$4;->this$0:Lcolor/support/v7/app/ColorAlertController;

    iput-object p2, p0, Lcolor/support/v7/app/ColorAlertController$4;->val$messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->val$messageView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->val$messageView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 488
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
