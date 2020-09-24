.class Lcolor/support/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/a/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/a/a;


# direct methods
.method constructor <init>(Lcolor/support/a/a;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/a/a$1;->a:Lcolor/support/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcolor/support/a/a$1;->a:Lcolor/support/a/a;

    invoke-static {v0}, Lcolor/support/a/a;->a(Lcolor/support/a/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcolor/support/a/a$1;->a:Lcolor/support/a/a;

    invoke-static {v0}, Lcolor/support/a/a;->a(Lcolor/support/a/a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x800013

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcolor/support/a/a$1;->a:Lcolor/support/a/a;

    invoke-static {v0}, Lcolor/support/a/a;->a(Lcolor/support/a/a;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcolor/support/a/a$1;->a:Lcolor/support/a/a;

    invoke-static {v0}, Lcolor/support/a/a;->a(Lcolor/support/a/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
