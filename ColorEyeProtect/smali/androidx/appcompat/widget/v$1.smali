.class Landroidx/appcompat/widget/v$1;
.super Landroidx/appcompat/widget/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/v$c;

.field final synthetic b:Landroidx/appcompat/widget/v;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/v;Landroid/view/View;Landroidx/appcompat/widget/v$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/v$1;->b:Landroidx/appcompat/widget/v;

    iput-object p3, p0, Landroidx/appcompat/widget/v$1;->a:Landroidx/appcompat/widget/v$c;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ag;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/p;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/v$1;->a:Landroidx/appcompat/widget/v$c;

    return-object p0
.end method

.method public b()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/v$1;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->getInternalPopup()Landroidx/appcompat/widget/v$e;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/v$e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v$1;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->a()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
