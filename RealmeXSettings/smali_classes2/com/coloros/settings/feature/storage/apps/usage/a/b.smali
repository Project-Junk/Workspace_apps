.class final Lcom/coloros/settings/feature/storage/apps/usage/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "app_storage.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 28
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE app_dir(_id INTEGER PRIMARY KEY AUTOINCREMENT, package_name TEXT, dir_path TEXT, package_exist INTEGER)"

    .line 1076
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE app_shared_dir(_id INTEGER PRIMARY KEY AUTOINCREMENT, shared_dirs_path TEXT)"

    .line 1083
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE eliminated_shared_dir(_id INTEGER PRIMARY KEY AUTOINCREMENT, eliminated_dirs_path TEXT)"

    .line 1090
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE white_list_dir(_id INTEGER PRIMARY KEY AUTOINCREMENT, white_list_dirs_path TEXT)"

    .line 1097
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE big_file_app(_id INTEGER PRIMARY KEY AUTOINCREMENT, big_file_app_pkg TEXT)"

    .line 1104
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p2, 0x2

    if-gt p3, p2, :cond_0

    const-string p2, "DROP TABLE IF EXISTS app_shared_dir"

    .line 64
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string p2, "DROP TABLE IF EXISTS eliminated_shared_dir"

    .line 66
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS white_list_dir"

    .line 67
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS big_file_app"

    .line 68
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string p2, "CREATE TABLE app_shared_dir(_id INTEGER PRIMARY KEY AUTOINCREMENT, shared_dirs_path TEXT)"

    const-string v0, "DROP TABLE IF EXISTS app_shared_dir"

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS eliminated_shared_dir"

    .line 44
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS white_list_dir"

    .line 45
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS big_file_app"

    .line 46
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE eliminated_shared_dir(_id INTEGER PRIMARY KEY AUTOINCREMENT, eliminated_dirs_path TEXT)"

    .line 2090
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE white_list_dir(_id INTEGER PRIMARY KEY AUTOINCREMENT, white_list_dirs_path TEXT)"

    .line 2097
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE big_file_app(_id INTEGER PRIMARY KEY AUTOINCREMENT, big_file_app_pkg TEXT)"

    .line 2104
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 52
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    const-string p2, "DROP TABLE IF EXISTS app_dir"

    .line 55
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE app_dir(_id INTEGER PRIMARY KEY AUTOINCREMENT, package_name TEXT, dir_path TEXT, package_exist INTEGER)"

    .line 4076
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
