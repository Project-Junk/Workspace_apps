.class Landroidx/appcompat/widget/an$b;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/an;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/an;)V
    .locals 0

    .line 556
    iput-object p1, p0, Landroidx/appcompat/widget/an$b;->a:Landroidx/appcompat/widget/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 561
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/an$c;

    .line 562
    invoke-virtual {v0}, Landroidx/appcompat/widget/an$c;->b()Landroidx/appcompat/app/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->d()V

    .line 563
    iget-object v0, p0, Landroidx/appcompat/widget/an$b;->a:Landroidx/appcompat/widget/an;

    iget-object v0, v0, Landroidx/appcompat/widget/an;->b:Landroidx/appcompat/widget/ag;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ag;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 565
    iget-object v3, p0, Landroidx/appcompat/widget/an$b;->a:Landroidx/appcompat/widget/an;

    iget-object v3, v3, Landroidx/appcompat/widget/an;->b:Landroidx/appcompat/widget/ag;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/ag;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 566
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
