.class Landroidx/appcompat/app/l$2;
.super Landroidx/core/f/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/l$2;->a:Landroidx/appcompat/app/l;

    invoke-direct {p0}, Landroidx/core/f/z;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/app/l$2;->a:Landroidx/appcompat/app/l;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    iget-object p0, p0, Landroidx/appcompat/app/l$2;->a:Landroidx/appcompat/app/l;

    iget-object p0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
