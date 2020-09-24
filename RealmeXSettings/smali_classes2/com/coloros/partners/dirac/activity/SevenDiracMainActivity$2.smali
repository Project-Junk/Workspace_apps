.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$2;
.super Landroid/widget/ArrayAdapter;
.source "SevenDiracMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Landroid/content/Context;[Ljava/lang/Object;Landroid/widget/ListView;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$2;->b:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iput-object p4, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$2;->a:Landroid/widget/ListView;

    const p1, 0x7f0d00b9

    const p4, 0x7f0a013c

    invoke-direct {p0, p2, p1, p4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 764
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 765
    iget-object p3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$2;->b:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result p3

    if-ne p1, p3, :cond_0

    .line 766
    iget-object p3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$2;->a:Landroid/widget/ListView;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p3, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    const p3, 0x7f0a0189

    .line 768
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 769
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$2;->getCount()I

    move-result v1

    if-eqz p3, :cond_2

    if-eq v1, v0, :cond_1

    sub-int/2addr v1, v0

    if-eq p1, v1, :cond_1

    const p1, 0x7f080434

    .line 772
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 774
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-object p2
.end method
