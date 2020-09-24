.class public Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;
.super Ljava/lang/Object;
.source "ColorLifeCycleProxy.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/a;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/c;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/e;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/g;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/android/settingslib/core/lifecycle/a/i;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 64
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/a;

    if-eqz v2, :cond_0

    .line 65
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/a;

    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/a/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 73
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/b;

    if-eqz v2, :cond_0

    .line 74
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/b;

    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/a/b;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 82
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/c;

    if-eqz v2, :cond_0

    .line 83
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/c;

    invoke-interface {v1, p1, p2}, Lcom/android/settingslib/core/lifecycle/a/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 91
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/d;

    if-eqz v2, :cond_0

    .line 92
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/d;

    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/a/d;->onDestroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 100
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/e;

    if-eqz v2, :cond_0

    .line 101
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/e;

    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 110
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/f;

    if-eqz v2, :cond_0

    .line 111
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/f;

    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/a/f;->onPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 119
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/g;

    if-eqz v2, :cond_0

    .line 120
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/g;

    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/a/g;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 128
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/h;

    if-eqz v2, :cond_0

    .line 129
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/h;

    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/a/h;->onResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 137
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/i;

    if-eqz v2, :cond_0

    .line 138
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/i;

    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/a/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 146
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/j;

    if-eqz v2, :cond_0

    .line 147
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/j;

    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/a/j;->onStart()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 155
    instance-of v2, v1, Lcom/android/settingslib/core/lifecycle/a/k;

    if-eqz v2, :cond_0

    .line 156
    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/k;

    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/a/k;->onStop()V

    goto :goto_0

    :cond_1
    return-void
.end method
