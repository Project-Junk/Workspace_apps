.class public final Lcom/android/settingslib/n/e;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/n/e$a;,
        Lcom/android/settingslib/n/e$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/n/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/n/e$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/android/settingslib/n/e$b;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/n/f;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/android/settingslib/n/f;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public e:Lcom/android/settingslib/n/f;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/android/settingslib/n/b;

.field private i:Lcom/android/settingslib/d/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/n/e;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    .line 56
    new-instance v0, Lcom/android/settingslib/n/e$b;

    invoke-direct {v0, p0}, Lcom/android/settingslib/n/e$b;-><init>(Lcom/android/settingslib/n/e;)V

    iput-object v0, p0, Lcom/android/settingslib/n/e;->b:Lcom/android/settingslib/n/e$b;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    .line 89
    iput-object p1, p0, Lcom/android/settingslib/n/e;->g:Landroid/content/Context;

    const/4 v0, 0x0

    .line 91
    invoke-static {p1, v0}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;Lcom/android/settingslib/d/q$a;)Lcom/android/settingslib/d/q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/n/e;->i:Lcom/android/settingslib/d/q;

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/n/e;->i:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string p1, "LocalMediaManager"

    const-string v0, "Bluetooth is not supported on this device"

    .line 93
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    new-instance v1, Lcom/android/settingslib/n/b;

    invoke-direct {v1, p1, v0}, Lcom/android/settingslib/n/b;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/q;)V

    iput-object v1, p0, Lcom/android/settingslib/n/e;->h:Lcom/android/settingslib/n/b;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/n/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/n/f;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settingslib/n/f;"
        }
    .end annotation

    .line 204
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/n/f;

    .line 205
    invoke-virtual {v0}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const-string p0, "LocalMediaManager"

    const-string p1, "getMediaDeviceById() can\'t found device"

    .line 209
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/n/e;)V
    .locals 3

    .line 1164
    iget-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    if-nez v0, :cond_0

    .line 1166
    new-instance v0, Lcom/android/settingslib/n/h;

    iget-object v1, p0, Lcom/android/settingslib/n/e;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/n/e;->i:Lcom/android/settingslib/d/q;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/n/h;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/q;)V

    iput-object v0, p0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settingslib/n/e;)Lcom/android/settingslib/n/f;
    .locals 4

    .line 1223
    iget-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/n/f;

    .line 1224
    instance-of v2, v1, Lcom/android/settingslib/n/a;

    if-eqz v2, :cond_0

    .line 1225
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/n/a;

    .line 2086
    iget-object v2, v2, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    const/4 v3, 0x2

    .line 2234
    invoke-virtual {v2, v3}, Lcom/android/settingslib/d/g;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x15

    .line 2235
    invoke-virtual {v2, v3}, Lcom/android/settingslib/d/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    return-object v1

    .line 1230
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/android/settingslib/n/e;)V
    .locals 2

    .line 3174
    iget-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/n/e;->d:Lcom/android/settingslib/n/f;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3175
    iget-object p0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/n/e$a;

    .line 148
    invoke-interface {v2}, Lcom/android/settingslib/n/e$a;->c()V

    goto :goto_0

    .line 150
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

.method public final b()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/n/e;->h:Lcom/android/settingslib/n/b;

    iget-object v1, p0, Lcom/android/settingslib/n/e;->b:Lcom/android/settingslib/n/e$b;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/n/b;->a(Lcom/android/settingslib/n/g$a;)V

    .line 159
    iget-object v0, p0, Lcom/android/settingslib/n/e;->h:Lcom/android/settingslib/n/b;

    invoke-virtual {v0}, Lcom/android/settingslib/n/b;->a()V

    return-void
.end method

.method final c()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    sget-object v2, Lcom/android/settingslib/n/e;->f:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/n/e;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/n/e$a;

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/n/e;->c:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lcom/android/settingslib/n/e$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 185
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

.method public final d()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/settingslib/n/e;->h:Lcom/android/settingslib/n/b;

    iget-object v1, p0, Lcom/android/settingslib/n/e;->b:Lcom/android/settingslib/n/e$b;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/n/b;->b(Lcom/android/settingslib/n/g$a;)V

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/n/e;->h:Lcom/android/settingslib/n/b;

    invoke-virtual {v0}, Lcom/android/settingslib/n/b;->d()V

    return-void
.end method
