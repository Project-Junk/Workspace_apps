.class Landroidx/appcompat/widget/ai$b;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ai;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ai;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ai$b;->a:Landroidx/appcompat/widget/ai;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ai$b;->a:Landroidx/appcompat/widget/ai;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ai;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ai$b;->a:Landroidx/appcompat/widget/ai;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ai;->b_()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ai$b;->a:Landroidx/appcompat/widget/ai;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ai;->c()V

    return-void
.end method
