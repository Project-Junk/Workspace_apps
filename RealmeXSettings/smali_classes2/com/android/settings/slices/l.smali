.class final Lcom/android/settings/slices/l;
.super Ljava/lang/Object;
.source "SlicesIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/settings/slices/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/slices/l;->a:Landroid/content/Context;

    .line 48
    iget-object p1, p0, Lcom/android/settings/slices/l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/slices/i;->a(Landroid/content/Context;)Lcom/android/settings/slices/i;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/l;->b:Lcom/android/settings/slices/i;

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/e;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/e;

    .line 102
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1079
    iget-object v2, v0, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    const-string v3, "key"

    .line 103
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v2, v0, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    const-string v3, "title"

    .line 104
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v2, v0, Lcom/android/settings/slices/e;->c:Ljava/lang/String;

    const-string v3, "summary"

    .line 105
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v2, v0, Lcom/android/settings/slices/e;->d:Ljava/lang/CharSequence;

    .line 106
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "screentitle"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v2, v0, Lcom/android/settings/slices/e;->e:Ljava/lang/String;

    const-string v3, "keywords"

    .line 107
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget v2, v0, Lcom/android/settings/slices/e;->f:I

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1103
    iget-object v2, v0, Lcom/android/settings/slices/e;->g:Ljava/lang/String;

    const-string v3, "fragment"

    .line 109
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v2, v0, Lcom/android/settings/slices/e;->i:Ljava/lang/String;

    const-string v3, "controller"

    .line 110
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-boolean v2, v0, Lcom/android/settings/slices/e;->k:Z

    .line 111
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "platform_slice"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2115
    iget v2, v0, Lcom/android/settings/slices/e;->j:I

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "slice_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2123
    iget-object v0, v0, Lcom/android/settings/slices/e;->l:Ljava/lang/String;

    const-string v2, "unavailable_slice_subtitle"

    .line 113
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "slices_index"

    .line 116
    invoke-virtual {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/e;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/slices/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/slices/l;->a:Landroid/content/Context;

    .line 93
    invoke-interface {v0, v1}, Lcom/android/settings/slices/j;->a(Landroid/content/Context;)Lcom/android/settings/slices/f;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/settings/slices/f;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/android/settings/slices/l;->b:Lcom/android/settings/slices/i;

    invoke-virtual {v0}, Lcom/android/settings/slices/i;->b()Z

    move-result v0

    const-string v1, "SlicesIndexer"

    if-eqz v0, :cond_0

    const-string v0, "Slices already indexed - returning."

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/l;->b:Lcom/android/settings/slices/i;

    invoke-virtual {v0}, Lcom/android/settings/slices/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/slices/l;->b:Lcom/android/settings/slices/i;

    invoke-virtual {v4, v0}, Lcom/android/settings/slices/i;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/slices/l;->b()Ljava/util/List;

    move-result-object v4

    .line 76
    invoke-static {v0, v4}, Lcom/android/settings/slices/l;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 78
    iget-object v4, p0, Lcom/android/settings/slices/l;->b:Lcom/android/settings/slices/i;

    invoke-virtual {v4}, Lcom/android/settings/slices/i;->a()V

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Indexing slices database took: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    throw v1
.end method

.method public final run()V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/slices/l;->a()V

    return-void
.end method
