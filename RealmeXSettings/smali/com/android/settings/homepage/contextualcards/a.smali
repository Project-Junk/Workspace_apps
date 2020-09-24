.class public final Lcom/android/settings/homepage/contextualcards/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CardDatabaseHelper.java"


# static fields
.field static a:Lcom/android/settings/homepage/contextualcards/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "homepage_cards.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 172
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/a;
    .locals 2

    const-class v0, Lcom/android/settings/homepage/contextualcards/a;

    monitor-enter v0

    .line 193
    :try_start_0
    sget-object v1, Lcom/android/settings/homepage/contextualcards/a;->a:Lcom/android/settings/homepage/contextualcards/a;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lcom/android/settings/homepage/contextualcards/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/homepage/contextualcards/a;->a:Lcom/android/settings/homepage/contextualcards/a;

    .line 196
    :cond_0
    sget-object p0, Lcom/android/settings/homepage/contextualcards/a;->a:Lcom/android/settings/homepage/contextualcards/a;
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
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE cards(name TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL, score DOUBLE NOT NULL, slice_uri TEXT, category INTEGER DEFAULT 0, localized_to_locale TEXT, package_name TEXT NOT NULL, app_version INTEGER NOT NULL, title_res_name TEXT, title_text TEXT, summary_res_name TEXT, summary_text TEXT, icon_res_name TEXT, icon_res_id INTEGER DEFAULT 0, card_action INTEGER, expire_time_ms INTEGER, support_half_width INTEGER DEFAULT 0, card_dismissed INTEGER DEFAULT 0 );"

    .line 177
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    if-ge p2, p3, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reconstructing DB from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CardDatabaseHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP TABLE IF EXISTS cards"

    .line 184
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
