.class public final Lcom/coloros/settings/utils/ar;
.super Ljava/lang/Object;
.source "PreferenceControllerUtils.java"


# direct methods
.method public static a(Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/a;

    .line 41
    instance-of v1, v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/a;

    .line 52
    instance-of v1, v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_2
    return-void
.end method
