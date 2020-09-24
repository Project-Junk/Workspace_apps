.class Landroidx/appcompat/widget/ao$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ao;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ao;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ao$a;->a:Landroidx/appcompat/widget/ao;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ao$a;->a:Landroidx/appcompat/widget/ao;

    iget-object p0, p0, Landroidx/appcompat/widget/ao;->b:Landroidx/appcompat/widget/ah;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ah;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ao$a;->a:Landroidx/appcompat/widget/ao;

    iget-object p0, p0, Landroidx/appcompat/widget/ao;->b:Landroidx/appcompat/widget/ah;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ah;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/ao$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ao$c;->b()Landroidx/appcompat/app/a$c;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/widget/ao$a;->a:Landroidx/appcompat/widget/ao;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ao$a;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a$c;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/widget/ao;->a(Landroidx/appcompat/app/a$c;Z)Landroidx/appcompat/widget/ao$c;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/widget/ao$c;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ao$a;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a$c;

    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/ao$c;->a(Landroidx/appcompat/app/a$c;)V

    :goto_0
    return-object p2
.end method
