.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oppo/support/widget/OppoTouchSearchView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppAlphabetIndexer"
.end annotation


# instance fields
.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/color/darkmode/utils/IAppOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderSize:I

.field private final mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mOtherIndexKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;


# direct methods
.method public constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/color/darkmode/utils/IAppOrderInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mEntries:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mHashMap:Ljava/util/HashMap;

    const/4 p1, 0x2

    iput p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mHeaderSize:I

    const/4 p1, 0x0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mOtherIndexKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mEntries:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x30

    move v0, p3

    :goto_0
    if-ge p2, p1, :cond_4

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/darkmode/utils/IAppOrderInfo;

    invoke-virtual {v1}, Lcom/color/darkmode/utils/IAppOrderInfo;->getInitialChar()C

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Lcom/color/darkmode/utils/IAppOrderInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/color/darkmode/utils/AppNameComparator;->getFirstSpellForSearchBar(Ljava/lang/String;)C

    move-result v2

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/16 v2, 0x7a

    const/16 v3, 0x61

    if-le v3, v1, :cond_1

    goto :goto_1

    :cond_1
    if-lt v2, v1, :cond_2

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mHashMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mOtherIndexKey:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mOtherIndexKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mHashMap:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public onKey(Ljava/lang/CharSequence;)V
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "#"

    invoke-static {p1, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mEntries:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_0
    iget v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mHeaderSize:I

    add-int/2addr p1, v0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_2
    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    if-le p1, v2, :cond_5

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->mEntries:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06022a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_4
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(II)V

    :cond_5
    return-void
.end method

.method public onLongKey(Ljava/lang/CharSequence;)V
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onNameClick(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMOppoTouchSearchView$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lcom/oppo/support/widget/OppoTouchSearchView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->a()V

    return-void
.end method
