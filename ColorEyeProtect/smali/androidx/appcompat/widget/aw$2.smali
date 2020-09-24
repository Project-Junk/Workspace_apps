.class Landroidx/appcompat/widget/aw$2;
.super Landroidx/core/f/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/aw;->a(IJ)Landroidx/core/f/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/appcompat/widget/aw;

.field private c:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/aw;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/aw$2;->b:Landroidx/appcompat/widget/aw;

    iput p2, p0, Landroidx/appcompat/widget/aw$2;->a:I

    invoke-direct {p0}, Landroidx/core/f/z;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/aw$2;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/aw$2;->b:Landroidx/appcompat/widget/aw;

    iget-object p0, p0, Landroidx/appcompat/widget/aw;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Landroidx/appcompat/widget/aw$2;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/aw$2;->b:Landroidx/appcompat/widget/aw;

    iget-object p1, p1, Landroidx/appcompat/widget/aw;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Landroidx/appcompat/widget/aw$2;->a:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/aw$2;->c:Z

    return-void
.end method
