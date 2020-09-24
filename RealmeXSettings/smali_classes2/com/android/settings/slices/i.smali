.class public final Lcom/android/settings/slices/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SlicesDatabaseHelper.java"


# static fields
.field private static b:Lcom/android/settings/slices/i;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "slices_index.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 141
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 142
    iput-object p1, p0, Lcom/android/settings/slices/i;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/android/settings/slices/i;
    .locals 2

    const-class v0, Lcom/android/settings/slices/i;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/android/settings/slices/i;->b:Lcom/android/settings/slices/i;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lcom/android/settings/slices/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/slices/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/slices/i;->b:Lcom/android/settings/slices/i;

    .line 137
    :cond_0
    sget-object p0, Lcom/android/settings/slices/i;->b:Lcom/android/settings/slices/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE VIRTUAL TABLE slices_index USING fts4(key, title, summary, screentitle, keywords, icon, fragment, controller, platform_slice, slice_type, unavailable_slice_subtitle);"

    .line 191
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "SlicesDatabaseHelper"

    const-string v0, "Created databases"

    .line 192
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1200
    iget-object v0, p0, Lcom/android/settings/slices/i;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "slices_shared_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1201
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1227
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v4, 0x1

    .line 1202
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2207
    iget-object v0, p0, Lcom/android/settings/slices/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2208
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2209
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/settings/slices/i;->a:Landroid/content/Context;

    const-string v1, "slices_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "DROP TABLE IF EXISTS slices_index"

    .line 1196
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/android/settings/slices/i;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 2214
    iget-object v0, p0, Lcom/android/settings/slices/i;->a:Landroid/content/Context;

    const-string v1, "slices_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2227
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2216
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3220
    iget-object v0, p0, Lcom/android/settings/slices/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 147
    invoke-static {p1}, Lcom/android/settings/slices/i;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reconstructing DB from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SlicesDatabaseHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/i;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
