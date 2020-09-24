.class public Lcom/google/android/setupdesign/items/RecyclerItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/RecyclerItemAdapter$b;,
        Lcom/google/android/setupdesign/items/RecyclerItemAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/setupdesign/items/f;",
        ">;",
        "Lcom/google/android/setupdesign/items/d$a;"
    }
.end annotation


# instance fields
.field public final a:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Lcom/google/android/setupdesign/items/d;

.field private c:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$a;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/items/d;Z)V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->a:Z

    .line 72
    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->b:Lcom/google/android/setupdesign/items/d;

    .line 73
    iget-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->b:Lcom/google/android/setupdesign/items/d;

    invoke-interface {p1, p0}, Lcom/google/android/setupdesign/items/d;->a(Lcom/google/android/setupdesign/items/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;)Lcom/google/android/setupdesign/items/RecyclerItemAdapter$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->c:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$a;

    return-object p0
.end method

.method private a(I)Lcom/google/android/setupdesign/items/b;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->b:Lcom/google/android/setupdesign/items/d;

    invoke-interface {v0, p1}, Lcom/google/android/setupdesign/items/d;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/setupdesign/items/d;II)V
    .locals 0

    .line 186
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final b(Lcom/google/android/setupdesign/items/d;II)V
    .locals 0

    .line 191
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->b:Lcom/google/android/setupdesign/items/d;

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/d;->a()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p1

    .line 88
    instance-of v0, p1, Lcom/google/android/setupdesign/items/AbstractItem;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Lcom/google/android/setupdesign/items/AbstractItem;

    .line 1051
    iget p1, p1, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a:I

    if-lez p1, :cond_0

    int-to-long v0, p1

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Lcom/google/android/setupdesign/items/b;->d()I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 39
    check-cast p1, Lcom/google/android/setupdesign/items/f;

    .line 1165
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p2

    .line 1166
    invoke-interface {p2}, Lcom/google/android/setupdesign/items/b;->c()Z

    move-result v0

    .line 2044
    iput-boolean v0, p1, Lcom/google/android/setupdesign/items/f;->a:Z

    .line 2045
    iget-object v1, p1, Lcom/google/android/setupdesign/items/f;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2046
    iget-object v1, p1, Lcom/google/android/setupdesign/items/f;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2047
    iget-object v1, p1, Lcom/google/android/setupdesign/items/f;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2051
    iput-object p2, p1, Lcom/google/android/setupdesign/items/f;->b:Lcom/google/android/setupdesign/items/b;

    .line 1168
    iget-object p1, p1, Lcom/google/android/setupdesign/items/f;->itemView:Landroid/view/View;

    invoke-interface {p2, p1}, Lcom/google/android/setupdesign/items/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 2103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 2104
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2105
    new-instance v0, Lcom/google/android/setupdesign/items/f;

    invoke-direct {v0, p2}, Lcom/google/android/setupdesign/items/f;-><init>(Landroid/view/View;)V

    .line 2108
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "noBackground"

    .line 2109
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2111
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/setupdesign/b$g;->SudRecyclerItemAdapter:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2112
    sget v2, Lcom/google/android/setupdesign/b$g;->SudRecyclerItemAdapter_android_selectableItemBackground:I

    .line 2113
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2116
    sget v2, Lcom/google/android/setupdesign/b$g;->SudRecyclerItemAdapter_selectableItemBackground:I

    .line 2117
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_0

    .line 2119
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2121
    iget-boolean v3, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->a:Z

    if-eqz v3, :cond_1

    .line 2123
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v3

    .line 2124
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/b/a;->x:Lcom/google/android/setupcompat/b/a;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v3

    .line 2125
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v3, v4

    goto :goto_0

    .line 2127
    :cond_1
    sget v3, Lcom/google/android/setupdesign/b$g;->SudRecyclerItemAdapter_android_colorBackground:I

    .line 2128
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    .line 2142
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    .line 2143
    new-instance v1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$b;

    invoke-direct {v1, v4}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$b;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2134
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Cannot resolve required attributes. selectableItemBackground="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " background="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerItemAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2149
    :cond_5
    new-instance p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;

    invoke-direct {p1, p0, v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;-><init>(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;Lcom/google/android/setupdesign/items/f;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
