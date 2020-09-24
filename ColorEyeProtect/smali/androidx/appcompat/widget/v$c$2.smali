.class Landroidx/appcompat/widget/v$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/v$c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/v$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/v$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/v$c$2;->a:Landroidx/appcompat/widget/v$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/v$c$2;->a:Landroidx/appcompat/widget/v$c;

    iget-object v1, p0, Landroidx/appcompat/widget/v$c$2;->a:Landroidx/appcompat/widget/v$c;

    iget-object v1, v1, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/v$c;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v$c$2;->a:Landroidx/appcompat/widget/v$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/v$c$2;->a:Landroidx/appcompat/widget/v$c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/v$c;->g()V

    iget-object p0, p0, Landroidx/appcompat/widget/v$c$2;->a:Landroidx/appcompat/widget/v$c;

    invoke-static {p0}, Landroidx/appcompat/widget/v$c;->a(Landroidx/appcompat/widget/v$c;)V

    :goto_0
    return-void
.end method
