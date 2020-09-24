.class public Lcom/android/settingslib/core/lifecycle/Lifecycle;
.super Landroidx/lifecycle/LifecycleRegistry;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    .line 59
    new-instance p1, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;B)V

    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->b:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    .line 71
    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->b:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 4

    .line 1118
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1119
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 1120
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/j;

    if-eqz v3, :cond_0

    .line 1121
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/j;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/a/j;->onStart()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 4

    .line 1136
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1137
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 1138
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/h;

    if-eqz v3, :cond_0

    .line 1139
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/h;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/a/h;->onResume()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 4

    .line 1145
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1146
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 1147
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/f;

    if-eqz v3, :cond_0

    .line 1148
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/f;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/a/f;->onPause()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 4

    .line 1163
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1164
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 1165
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/k;

    if-eqz v3, :cond_0

    .line 1166
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/k;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/a/k;->onStop()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 4

    .line 1172
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1173
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 1174
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/d;

    if-eqz v3, :cond_0

    .line 1175
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/d;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/a/d;->onDestroy()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 100
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/a;

    if-eqz v3, :cond_0

    .line 101
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/a;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/a/a;->a(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 111
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/b;

    if-eqz v3, :cond_0

    .line 112
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/b;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/a/b;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 192
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/g;

    if-eqz v3, :cond_0

    .line 193
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/g;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/a/g;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 182
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 183
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/c;

    if-eqz v3, :cond_0

    .line 184
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/c;

    invoke-interface {v2, p1, p2}, Lcom/android/settingslib/core/lifecycle/a/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 200
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 201
    instance-of v4, v3, Lcom/android/settingslib/core/lifecycle/a/e;

    if-eqz v4, :cond_0

    .line 202
    check-cast v3, Lcom/android/settingslib/core/lifecycle/a/e;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/android/settingslib/utils/d;->b()V

    .line 81
    invoke-super {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 82
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 156
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/a/i;

    if-eqz v3, :cond_0

    .line 157
    check-cast v2, Lcom/android/settingslib/core/lifecycle/a/i;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/a/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/android/settingslib/utils/d;->b()V

    .line 91
    invoke-super {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 92
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
