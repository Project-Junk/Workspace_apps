.class public final Lcom/android/settings/applications/RunningProcessesView$b;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/android/settings/applications/y;

.field final b:Landroid/view/LayoutInflater;

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/y;)V
    .locals 1

    .line 218
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->f:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    .line 219
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$b;->a:Lcom/android/settings/applications/y;

    .line 220
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->b:Landroid/view/LayoutInflater;

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$b;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 239
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->a:Lcom/android/settings/applications/y;

    .line 240
    invoke-virtual {v0}, Lcom/android/settings/applications/y;->f()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->a:Lcom/android/settings/applications/y;

    .line 241
    invoke-virtual {v0}, Lcom/android/settings/applications/y;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->d:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_2

    .line 243
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->c:Z

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->a:Lcom/android/settings/applications/y;

    iget-object v1, v1, Lcom/android/settings/applications/y;->v:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 226
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->c:Z

    if-eq v0, p1, :cond_0

    .line 227
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->c:Z

    .line 228
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->a:Lcom/android/settings/applications/y;

    .line 2441
    iget-object v1, v0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 2442
    :try_start_0
    iput-boolean p1, v0, Lcom/android/settings/applications/y;->z:Z

    .line 2443
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$b;->a()V

    .line 230
    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->f:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RunningProcessesView;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2443
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/y$d;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 3301
    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$b;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->f:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->getRunningItemLayoutRedID()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3303
    new-instance p3, Lcom/android/settings/applications/RunningProcessesView$c;

    invoke-direct {p3, p2}, Lcom/android/settings/applications/RunningProcessesView$c;-><init>(Landroid/view/View;)V

    .line 3308
    :cond_0
    iget-object p3, p0, Lcom/android/settings/applications/RunningProcessesView$b;->a:Lcom/android/settings/applications/y;

    iget-object p3, p3, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter p3

    .line 3309
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3313
    monitor-exit p3

    goto :goto_0

    .line 3315
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$c;

    .line 3316
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/y$d;

    .line 3317
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$b;->a:Lcom/android/settings/applications/y;

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$b;->f:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settings/applications/RunningProcessesView$c;->a(Lcom/android/settings/applications/y;Lcom/android/settings/applications/y$c;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$a;

    move-result-object v0

    .line 3318
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$b;->f:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3319
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :goto_0
    iget-object p3, p0, Lcom/android/settings/applications/RunningProcessesView$b;->f:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$b;->getCount()I

    move-result v0

    invoke-virtual {p3, p2, p1, v0}, Lcom/android/settings/applications/RunningProcessesView;->a(Landroid/view/View;II)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 3319
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->a:Lcom/android/settings/applications/y;

    invoke-virtual {v0}, Lcom/android/settings/applications/y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/y$d;

    iget-boolean p1, p1, Lcom/android/settings/applications/y$d;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
