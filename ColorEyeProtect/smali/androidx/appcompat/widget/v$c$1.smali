.class Landroidx/appcompat/widget/v$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/v$c;-><init>(Landroidx/appcompat/widget/v;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/v;

.field final synthetic b:Landroidx/appcompat/widget/v$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/v$c;Landroidx/appcompat/widget/v;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/v$c$1;->b:Landroidx/appcompat/widget/v$c;

    iput-object p2, p0, Landroidx/appcompat/widget/v$c$1;->a:Landroidx/appcompat/widget/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/appcompat/widget/v$c$1;->b:Landroidx/appcompat/widget/v$c;

    iget-object p1, p1, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/v;->setSelection(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/v$c$1;->b:Landroidx/appcompat/widget/v$c;

    iget-object p1, p1, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/v$c$1;->b:Landroidx/appcompat/widget/v$c;

    iget-object p1, p1, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object p4, p0, Landroidx/appcompat/widget/v$c$1;->b:Landroidx/appcompat/widget/v$c;

    iget-object p4, p4, Landroidx/appcompat/widget/v$c;->a:Landroid/widget/ListAdapter;

    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/appcompat/widget/v;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/v$c$1;->b:Landroidx/appcompat/widget/v$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->c()V

    return-void
.end method
