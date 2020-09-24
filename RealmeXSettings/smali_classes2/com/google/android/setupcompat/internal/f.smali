.class public final Lcom/google/android/setupcompat/internal/f;
.super Ljava/lang/Object;
.source "PersistableBundles.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x2710
.end annotation


# direct methods
.method public static varargs a(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;[Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .locals 6

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 41
    new-array v1, v1, [Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 44
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 46
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, p0

    new-array v5, p0, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const-string v3, "Found duplicate key [%s] while attempting to merge bundles."

    .line 49
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v4, v3}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method
