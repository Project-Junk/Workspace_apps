.class Lcom/color/support/widget/ExpandableRecyclerConnector$3;
.super Lcom/color/support/widget/ExpandableRecyclerConnector$c;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;->a(Lcom/color/support/widget/ExpandableRecyclerConnector$b;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ExpandableRecyclerConnector$b;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/color/support/widget/ExpandableRecyclerConnector;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ExpandableRecyclerConnector;Lcom/color/support/widget/ExpandableRecyclerConnector$b;II)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->d:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iput-object p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->a:Lcom/color/support/widget/ExpandableRecyclerConnector$b;

    iput p3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->b:I

    iput p4, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$c;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 599
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->a:Lcom/color/support/widget/ExpandableRecyclerConnector$b;

    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$b;->a()V

    .line 600
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->d:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->b:I

    invoke-static {p1, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->a(Lcom/color/support/widget/ExpandableRecyclerConnector;I)V

    .line 601
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->d:Lcom/color/support/widget/ExpandableRecyclerConnector;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->a(Lcom/color/support/widget/ExpandableRecyclerConnector;ZZ)V

    .line 602
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->d:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iget v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->c:I

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->b()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->c:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->a(II)V

    .line 603
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->a:Lcom/color/support/widget/ExpandableRecyclerConnector$b;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$b;->setTag(Ljava/lang/Object;)V

    return-void
.end method
