.class public Lcom/coloros/settings/backuprestore/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = " MediaScanner"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/coloros/settings/backuprestore/MediaScanner;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkFilePath(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized scanFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/backuprestore/MediaScanner;->checkFilePath(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    monitor-exit p0

    return-object v1

    .line 123
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0, v0}, Lcom/coloros/settings/backuprestore/MediaScanner;->scanFiles(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scanFiles(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 138
    monitor-exit p0

    return-object v0

    .line 141
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    new-instance v2, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;

    iget-object v3, p0, Lcom/coloros/settings/backuprestore/MediaScanner;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v2}, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->start()V

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    invoke-direct {p0, v3}, Lcom/coloros/settings/backuprestore/MediaScanner;->checkFilePath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v2, v3}, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->scan(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 153
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v2}, Lcom/coloros/settings/backuprestore/MediaScanner$InternalScanner;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
