.class Landroidx/appcompat/widget/ai$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ai;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ai;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->c:Landroidx/appcompat/widget/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->c:Landroidx/appcompat/widget/ae;

    invoke-static {v0}, Landroidx/core/f/t;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->c:Landroidx/appcompat/widget/ae;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ae;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    iget-object v1, v1, Landroidx/appcompat/widget/ai;->c:Landroidx/appcompat/widget/ae;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ae;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->c:Landroidx/appcompat/widget/ae;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ae;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    iget v1, v1, Landroidx/appcompat/widget/ai;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    iget-object v0, v0, Landroidx/appcompat/widget/ai;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/ai$e;->a:Landroidx/appcompat/widget/ai;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ai;->b_()V

    :cond_0
    return-void
.end method
