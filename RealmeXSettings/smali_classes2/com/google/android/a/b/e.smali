.class public final Lcom/google/android/a/b/e;
.super Ljava/lang/Object;
.source "SqliteWrapper.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string p2, "SqliteWrapper"

    const-string v0, "Catch a SQLiteException when delete: "

    .line 104
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    invoke-static {p0, p1}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string p2, "SqliteWrapper"

    const-string p3, "Catch a SQLiteException when update: "

    .line 93
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    invoke-static {p0, p1}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .locals 2

    .line 1056
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unable to open database file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x10403a5

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 64
    :cond_0
    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 113
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "SqliteWrapper"

    const-string p3, "Catch a SQLiteException when insert: "

    .line 115
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-static {p0, p1}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    const/4 p0, 0x0

    return-object p0
.end method
