.class public abstract Lcom/android/settingslib/n/g;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/n/g$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/n/g$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/n/f;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/content/Context;

.field protected d:Landroid/app/Notification;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/n/g;->b:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/n/g;->c:Landroid/content/Context;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/settingslib/n/g;->d:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/android/settingslib/n/f;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/n/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/n/f;

    .line 72
    invoke-virtual {v1}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const-string p1, "MediaManager"

    const-string v0, "findMediaDevice() can\'t found device"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/android/settingslib/n/f;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/n/g$a;

    .line 83
    invoke-interface {v2, p1}, Lcom/android/settingslib/n/g$a;->a(Lcom/android/settingslib/n/f;)V

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final a(Lcom/android/settingslib/n/g$a;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/n/f;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/n/g$a;

    .line 107
    invoke-interface {v2, p1}, Lcom/android/settingslib/n/g$a;->b(Ljava/util/List;)V

    goto :goto_0

    .line 109
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final b(Lcom/android/settingslib/n/f;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/n/g$a;

    .line 91
    invoke-interface {v2, p1}, Lcom/android/settingslib/n/g$a;->b(Lcom/android/settingslib/n/f;)V

    goto :goto_0

    .line 93
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final b(Lcom/android/settingslib/n/g$a;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/n/g$a;

    .line 115
    invoke-interface {v2, p1}, Lcom/android/settingslib/n/g$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final e()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/n/g$a;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/n/g;->b:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lcom/android/settingslib/n/g$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final f()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/g;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/n/g$a;

    .line 123
    invoke-interface {v2}, Lcom/android/settingslib/n/g$a;->a()V

    goto :goto_0

    .line 125
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
