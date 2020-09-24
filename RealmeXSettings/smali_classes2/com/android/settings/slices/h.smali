.class public final Lcom/android/settings/slices/h;
.super Ljava/lang/Object;
.source "SlicesDatabaseAccessor.java"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:Lcom/android/settings/slices/i;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "key"

    const-string v1, "title"

    const-string v2, "summary"

    const-string v3, "screentitle"

    const-string v4, "keywords"

    const-string v5, "icon"

    const-string v6, "fragment"

    const-string v7, "controller"

    const-string v8, "platform_slice"

    const-string v9, "slice_type"

    const-string v10, "unavailable_slice_subtitle"

    .line 41
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/slices/h;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/android/settings/slices/h;->b:I

    .line 62
    iput-object p1, p0, Lcom/android/settings/slices/h;->c:Landroid/content/Context;

    .line 63
    iget-object p1, p0, Lcom/android/settings/slices/h;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/slices/i;->a(Landroid/content/Context;)Lcom/android/settings/slices/i;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/h;->d:Lcom/android/settings/slices/i;

    return-void
.end method

.method private static a(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/e;
    .locals 12

    const-string v0, "key"

    .line 155
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 156
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary"

    .line 157
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screentitle"

    .line 159
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 158
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "keywords"

    .line 160
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    .line 161
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "fragment"

    .line 163
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 162
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "controller"

    .line 165
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 164
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "platform_slice"

    .line 167
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 166
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    const-string v8, "slice_type"

    .line 169
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 168
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v11, "unavailable_slice_subtitle"

    .line 171
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 170
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    move v8, v9

    .line 177
    :cond_1
    new-instance p2, Lcom/android/settings/slices/e$a;

    invoke-direct {p2}, Lcom/android/settings/slices/e$a;-><init>()V

    .line 1181
    iput-object v0, p2, Lcom/android/settings/slices/e$a;->a:Ljava/lang/String;

    .line 1186
    iput-object v1, p2, Lcom/android/settings/slices/e$a;->b:Ljava/lang/String;

    .line 1191
    iput-object v2, p2, Lcom/android/settings/slices/e$a;->c:Ljava/lang/String;

    .line 1196
    iput-object v3, p2, Lcom/android/settings/slices/e$a;->d:Ljava/lang/CharSequence;

    .line 1201
    iput-object v4, p2, Lcom/android/settings/slices/e$a;->e:Ljava/lang/String;

    .line 1206
    iput v5, p2, Lcom/android/settings/slices/e$a;->f:I

    .line 1216
    iput-object v6, p2, Lcom/android/settings/slices/e$a;->g:Ljava/lang/String;

    .line 2211
    iput-object v7, p2, Lcom/android/settings/slices/e$a;->i:Ljava/lang/String;

    .line 2221
    iput-object p1, p2, Lcom/android/settings/slices/e$a;->h:Landroid/net/Uri;

    .line 2231
    iput-boolean v10, p2, Lcom/android/settings/slices/e$a;->k:Z

    .line 3226
    iput v8, p2, Lcom/android/settings/slices/e$a;->j:I

    .line 3237
    iput-object p0, p2, Lcom/android/settings/slices/e$a;->l:Ljava/lang/String;

    .line 190
    invoke-virtual {p2}, Lcom/android/settings/slices/e$a;->a()Lcom/android/settings/slices/e;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/slices/h;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/slices/h;->c:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/settings/slices/j;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw v2
.end method

.method private b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 125
    invoke-direct {p0}, Lcom/android/settings/slices/h;->a()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/slices/h;->d:Lcom/android/settings/slices/i;

    invoke-virtual {v0}, Lcom/android/settings/slices/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    .line 129
    new-array v5, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 130
    sget-object v3, Lcom/android/settings/slices/h;->a:[Ljava/lang/String;

    const-string v4, "key = ?"

    const-string v2, "slices_index"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    if-gt v2, v0, :cond_0

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    return-object v1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Should not match more than 1 slice with path: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid Slices key from path: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/android/settings/slices/e;
    .locals 3

    .line 73
    invoke-static {p1}, Lcom/android/settings/slices/d;->a(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/slices/h;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    .line 78
    :try_start_0
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/android/settings/slices/h;->a(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 77
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    .line 79
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p1

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid Slices uri: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/settings/slices/e;
    .locals 2

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/slices/h;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    :try_start_0
    invoke-static {p1, v1, v0}, Lcom/android/settings/slices/h;->a(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 88
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    .line 90
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v0
.end method

.method public final a(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/android/settings/slices/h;->a()V

    if-eqz p1, :cond_0

    const-string p1, "platform_slice = 1"

    goto :goto_0

    :cond_0
    const-string p1, "platform_slice = 0"

    :goto_0
    move-object v3, p1

    .line 106
    iget-object p1, p0, Lcom/android/settings/slices/h;->d:Lcom/android/settings/slices/i;

    invoke-virtual {p1}, Lcom/android/settings/slices/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p1, "key"

    .line 107
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "slices_index"

    .line 110
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 117
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 110
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 119
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw p1
.end method
