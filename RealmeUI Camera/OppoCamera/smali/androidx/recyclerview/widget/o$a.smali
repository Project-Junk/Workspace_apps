.class public Landroidx/recyclerview/widget/o$a;
.super Landroidx/core/g/a;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/o;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/core/g/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/o;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Landroidx/core/g/a;-><init>()V

    .line 109
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    .line 117
    iput-object p1, p0, Landroidx/recyclerview/widget/o$a;->a:Landroidx/recyclerview/widget/o;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroidx/core/g/a/e;
    .locals 1

    .line 242
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Landroidx/core/g/a;->a(Landroid/view/View;)Landroidx/core/g/a/e;

    move-result-object p1

    return-object p1

    .line 246
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/g/a;->a(Landroid/view/View;)Landroidx/core/g/a/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/g/a/d;)V
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->a:Landroidx/recyclerview/widget/o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/o;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->a:Landroidx/recyclerview/widget/o;

    iget-object v0, v0, Landroidx/recyclerview/widget/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->a:Landroidx/recyclerview/widget/o;

    iget-object v0, v0, Landroidx/recyclerview/widget/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroidx/core/g/a/d;)V

    .line 144
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;Landroidx/core/g/a/d;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;Landroidx/core/g/a/d;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;Landroidx/core/g/a/d;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->a:Landroidx/recyclerview/widget/o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/o;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->a:Landroidx/recyclerview/widget/o;

    iget-object v0, v0, Landroidx/recyclerview/widget/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/g/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 164
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/g/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 167
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->a:Landroidx/recyclerview/widget/o;

    iget-object v0, v0, Landroidx/recyclerview/widget/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 170
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/core/g/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/g/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 235
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/g/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 198
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1, p2}, Landroidx/core/g/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 202
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method c(Landroid/view/View;)V
    .locals 2

    .line 125
    invoke-static {p1}, Landroidx/core/g/u;->b(Landroid/view/View;)Landroidx/core/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 127
    iget-object v1, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1, p2}, Landroidx/core/g/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method d(Landroid/view/View;)Landroidx/core/g/a;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/g/a;

    return-object p1
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 220
    iget-object v0, p0, Landroidx/recyclerview/widget/o$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/a;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1, p2}, Landroidx/core/g/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/g/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method
