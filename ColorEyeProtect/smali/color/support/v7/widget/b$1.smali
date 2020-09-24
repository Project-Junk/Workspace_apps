.class Lcolor/support/v7/widget/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/v7/widget/b;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/b;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 14

    iget-object v0, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    invoke-static {v0}, Lcolor/support/v7/widget/b;->a(Lcolor/support/v7/widget/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    invoke-static {v0}, Lcolor/support/v7/widget/b;->a(Lcolor/support/v7/widget/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    invoke-static {v0}, Lcolor/support/v7/widget/b;->b(Lcolor/support/v7/widget/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    invoke-static {v0}, Lcolor/support/v7/widget/b;->b(Lcolor/support/v7/widget/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    iget-object v1, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    iget-object v3, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    invoke-static {v3}, Lcolor/support/v7/widget/b;->c(Lcolor/support/v7/widget/b;)I

    move-result v4

    iget-object v3, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    invoke-static {v3}, Lcolor/support/v7/widget/b;->d(Lcolor/support/v7/widget/b;)I

    move-result v5

    iget-object v3, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    invoke-static {v3}, Lcolor/support/v7/widget/b;->e(Lcolor/support/v7/widget/b;)I

    move-result v6

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcolor/support/v7/widget/b;->a(Lcolor/support/v7/widget/b;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v1

    invoke-static {v7, v1}, Lcolor/support/v7/widget/b;->a(Lcolor/support/v7/widget/b;Z)V

    iget-object v8, p0, Lcolor/support/v7/widget/b$1;->a:Lcolor/support/v7/widget/b;

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcolor/support/v7/widget/b;->update(IIIIZ)V

    :cond_1
    return-void
.end method
