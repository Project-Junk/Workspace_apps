.class public final Lcom/google/android/setupdesign/items/c;
.super Landroid/widget/BaseAdapter;
.source "ItemAdapter.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/setupdesign/items/d;

.field private final b:Lcom/google/android/setupdesign/items/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/items/d;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/setupdesign/items/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/setupdesign/items/c$a;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/c;->b:Lcom/google/android/setupdesign/items/c$a;

    .line 36
    iput-object p1, p0, Lcom/google/android/setupdesign/items/c;->a:Lcom/google/android/setupdesign/items/d;

    .line 37
    iget-object p1, p0, Lcom/google/android/setupdesign/items/c;->a:Lcom/google/android/setupdesign/items/d;

    invoke-interface {p1, p0}, Lcom/google/android/setupdesign/items/d;->a(Lcom/google/android/setupdesign/items/d$a;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/c;->a()V

    return-void
.end method

.method private a(I)Lcom/google/android/setupdesign/items/b;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/setupdesign/items/c;->a:Lcom/google/android/setupdesign/items/d;

    invoke-interface {v0, p1}, Lcom/google/android/setupdesign/items/d;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/c;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/items/c;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/google/android/setupdesign/items/c;->b:Lcom/google/android/setupdesign/items/c$a;

    invoke-interface {v1}, Lcom/google/android/setupdesign/items/b;->d()I

    move-result v1

    .line 3137
    iget-object v3, v2, Lcom/google/android/setupdesign/items/c$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 3138
    iget-object v3, v2, Lcom/google/android/setupdesign/items/c$a;->a:Landroid/util/SparseIntArray;

    iget v4, v2, Lcom/google/android/setupdesign/items/c$a;->b:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3139
    iget v3, v2, Lcom/google/android/setupdesign/items/c$a;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/setupdesign/items/c$a;->b:I

    .line 3141
    :cond_0
    iget-object v2, v2, Lcom/google/android/setupdesign/items/c$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/c;->a()V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/c;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/setupdesign/items/d;II)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/c;->b()V

    return-void
.end method

.method public final b(Lcom/google/android/setupdesign/items/d;II)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/c;->b()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/setupdesign/items/c;->a:Lcom/google/android/setupdesign/items/d;

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/d;->a()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/c;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/c;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/google/android/setupdesign/items/b;->d()I

    move-result p1

    .line 60
    iget-object v0, p0, Lcom/google/android/setupdesign/items/c;->b:Lcom/google/android/setupdesign/items/c$a;

    .line 1149
    iget-object v0, v0, Lcom/google/android/setupdesign/items/c$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/c;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p1

    if-nez p2, :cond_0

    .line 79
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 80
    invoke-interface {p1}, Lcom/google/android/setupdesign/items/b;->d()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/setupdesign/items/b;->a(Landroid/view/View;)V

    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/setupdesign/items/c;->b:Lcom/google/android/setupdesign/items/c$a;

    .line 2145
    iget-object v0, v0, Lcom/google/android/setupdesign/items/c$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/c;->a(I)Lcom/google/android/setupdesign/items/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/setupdesign/items/b;->c()Z

    move-result p1

    return p1
.end method
