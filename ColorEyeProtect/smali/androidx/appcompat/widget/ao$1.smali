.class Landroidx/appcompat/widget/ao$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ao;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/appcompat/widget/ao;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ao;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ao$1;->b:Landroidx/appcompat/widget/ao;

    iput-object p2, p0, Landroidx/appcompat/widget/ao$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ao$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ao$1;->b:Landroidx/appcompat/widget/ao;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ao;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/ao$1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/ao$1;->b:Landroidx/appcompat/widget/ao;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/ao;->smoothScrollTo(II)V

    iget-object p0, p0, Landroidx/appcompat/widget/ao$1;->b:Landroidx/appcompat/widget/ao;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ao;->a:Ljava/lang/Runnable;

    return-void
.end method
