.class Landroidx/appcompat/widget/ai$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ai;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ai;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ai$c;->a:Landroidx/appcompat/widget/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ai$c;->a:Landroidx/appcompat/widget/ai;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ai;->m()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ai$c;->a:Landroidx/appcompat/widget/ai;

    iget-object p1, p1, Landroidx/appcompat/widget/ai;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ai$c;->a:Landroidx/appcompat/widget/ai;

    iget-object p1, p1, Landroidx/appcompat/widget/ai;->f:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/appcompat/widget/ai$c;->a:Landroidx/appcompat/widget/ai;

    iget-object p2, p2, Landroidx/appcompat/widget/ai;->e:Landroidx/appcompat/widget/ai$e;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/ai$c;->a:Landroidx/appcompat/widget/ai;

    iget-object p0, p0, Landroidx/appcompat/widget/ai;->e:Landroidx/appcompat/widget/ai$e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ai$e;->run()V

    :cond_0
    return-void
.end method
