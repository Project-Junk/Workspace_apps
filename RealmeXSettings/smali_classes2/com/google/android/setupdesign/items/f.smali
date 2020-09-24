.class final Lcom/google/android/setupdesign/items/f;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ItemViewHolder.java"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$a;


# instance fields
.field a:Z

.field b:Lcom/google/android/setupdesign/items/b;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/android/setupdesign/items/f;->b:Lcom/google/android/setupdesign/items/b;

    instance-of v1, v0, Lcom/google/android/setupdesign/items/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/setupdesign/items/a;

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/a;->a()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/f;->a:Z

    return v0
.end method

.method public final b()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/android/setupdesign/items/f;->b:Lcom/google/android/setupdesign/items/b;

    instance-of v1, v0, Lcom/google/android/setupdesign/items/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/setupdesign/items/a;

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/a;->b()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/f;->a:Z

    return v0
.end method
