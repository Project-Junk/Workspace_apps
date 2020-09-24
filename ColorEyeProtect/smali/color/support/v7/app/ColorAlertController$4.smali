.class Lcolor/support/v7/app/ColorAlertController$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/app/ColorAlertController;->e(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcolor/support/v7/app/ColorAlertController;


# direct methods
.method constructor <init>(Lcolor/support/v7/app/ColorAlertController;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController$4;->b:Lcolor/support/v7/app/ColorAlertController;

    iput-object p2, p0, Lcolor/support/v7/app/ColorAlertController$4;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->a:Landroid/widget/TextView;

    const v2, 0x800013

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setJustificationMode(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$4;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
