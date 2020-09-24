.class final Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;
.super Ljava/lang/Object;
.source "CutoutDisplayAppListFragment.java"

# interfaces
.implements Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/coloros/settingslib/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/coloros/settingslib/a;",
            ">;)V"
        }
    .end annotation

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->c:Ljava/util/HashMap;

    .line 616
    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 617
    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 618
    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->d:Ljava/lang/String;

    .line 620
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 621
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 622
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mEntries size = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppAlphabetIndexer"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x30

    move v2, v1

    :goto_0
    if-ge v0, p1, :cond_3

    .line 624
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/a;

    if-eqz v3, :cond_2

    .line 626
    invoke-interface {v3}, Lcom/coloros/settingslib/a;->c()C

    move-result v4

    if-ne v4, v1, :cond_0

    .line 628
    invoke-interface {v3}, Lcom/coloros/settingslib/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/settings/feature/a/a;->a(Ljava/lang/String;)C

    move-result v4

    .line 630
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_1

    if-eq v3, v2, :cond_2

    .line 634
    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    goto :goto_1

    .line 637
    :cond_1
    iget-object v4, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->d:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 638
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->d:Ljava/lang/String;

    .line 639
    iget-object v4, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final onKey(Ljava/lang/CharSequence;)V
    .locals 3

    const-string v0, "*"

    .line 650
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const-string v0, "#"

    .line 652
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 654
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 655
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 657
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 659
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 664
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 665
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 666
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 668
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v2

    .line 672
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 675
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 676
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_4

    .line 677
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    return-void
.end method

.method public final onLongKey(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onNameClick(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
