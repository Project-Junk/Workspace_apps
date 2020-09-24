.class final Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;
.super Ljava/lang/Object;
.source "NewDiracMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iput-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    if-ltz p3, :cond_0

    .line 416
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p1

    .line 418
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object p4, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/partners/dirac/activity/b;

    .line 1030
    iget-object p3, p3, Lcom/coloros/partners/dirac/activity/b;->a:Lcom/oppo/a/a/a/b$a;

    .line 418
    invoke-static {p2, p3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Lcom/oppo/a/a/a/b$a;)Lcom/oppo/a/a/a/b$a;

    .line 419
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->n()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onItemClick, mode :"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p4}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oppo/a/a/a/b$a;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/oppo/a/a/a/b$a;)V

    .line 421
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/coloros/partners/dirac/activity/a;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p3

    .line 1093
    iput-object p3, p2, Lcom/coloros/partners/dirac/activity/a;->a:Lcom/oppo/a/a/a/b$a;

    .line 422
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/coloros/partners/dirac/activity/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/partners/dirac/activity/a;->notifyDataSetChanged()V

    .line 424
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Lcom/oppo/a/a/a/b$a;Lcom/oppo/a/a/a/b$a;)V

    .line 425
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$7;->b:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p2}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;Lcom/oppo/a/a/a/b$a;Lcom/oppo/a/a/a/b$a;)V

    :cond_0
    return-void
.end method
