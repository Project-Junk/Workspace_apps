.class public final Lcom/android/settings/homepage/contextualcards/conditional/i;
.super Ljava/lang/Object;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/i$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/conditional/j;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/android/settings/homepage/contextualcards/conditional/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/h;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->c:Ljava/util/concurrent/ExecutorService;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->e:Lcom/android/settings/homepage/contextualcards/conditional/h;

    .line 1154
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/b;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/b;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/c;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/c;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/d;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/d;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/e;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/e;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/l;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/l;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/n;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/n;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/o;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/o;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/q;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/q;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/p;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/p;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/r;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/r;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/m;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->d:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/m;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final a(J)Lcom/android/settings/homepage/contextualcards/conditional/j;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settings/homepage/contextualcards/conditional/j;",
            ">(J)TT;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/j;

    .line 145
    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/j;->d()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v1

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot find controller for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/homepage/contextualcards/conditional/j;

    .line 67
    new-instance v4, Lcom/android/settings/homepage/contextualcards/conditional/i$a;

    invoke-interface {v3}, Lcom/android/settings/homepage/contextualcards/conditional/j;->d()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/homepage/contextualcards/conditional/i;->a(J)Lcom/android/settings/homepage/contextualcards/conditional/j;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/settings/homepage/contextualcards/conditional/i$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/j;B)V

    .line 68
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const-wide/16 v3, 0x14

    .line 73
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/b;

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    const-string v3, "ConditionManager"

    const-string v4, "Failed to get displayable state for card, likely timeout. Skipping"

    .line 79
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionManager"

    const-string v1, "Already listening to condition state changes, skipping monitor setup"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->b:Z

    .line 111
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/j;

    .line 112
    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/j;->b()V

    goto :goto_0

    .line 116
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    return-void
.end method

.method final c()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i;->e:Lcom/android/settings/homepage/contextualcards/conditional/h;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Lcom/android/settings/homepage/contextualcards/conditional/h;->a()V

    :cond_0
    return-void
.end method
