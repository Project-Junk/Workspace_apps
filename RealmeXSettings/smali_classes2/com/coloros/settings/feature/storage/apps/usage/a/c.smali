.class final Lcom/coloros/settings/feature/storage/apps/usage/a/c;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static a:Lcom/coloros/settings/feature/storage/apps/usage/a/c;


# instance fields
.field private b:Lcom/coloros/settings/feature/storage/apps/usage/a/b;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->d:I

    .line 28
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/a/b;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->b:Lcom/coloros/settings/feature/storage/apps/usage/a/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/coloros/settings/feature/storage/apps/usage/a/c;
    .locals 2

    const-class v0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a/c;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/coloros/settings/feature/storage/apps/usage/a/c;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a/c;

    .line 36
    :cond_0
    sget-object p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    iget v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->d:I

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->b:Lcom/coloros/settings/feature/storage/apps/usage/a/b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
