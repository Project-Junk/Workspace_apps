.class public final Lcom/android/settings/fuelgauge/batterytip/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AnomalyDatabaseHelper.java"


# static fields
.field private static a:Lcom/android/settings/fuelgauge/batterytip/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "battery_settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 147
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/a;
    .locals 2

    const-class v0, Lcom/android/settings/fuelgauge/batterytip/a;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/batterytip/a;->a:Lcom/android/settings/fuelgauge/batterytip/a;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batterytip/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/fuelgauge/batterytip/a;->a:Lcom/android/settings/fuelgauge/batterytip/a;

    .line 143
    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batterytip/a;->a:Lcom/android/settings/fuelgauge/batterytip/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 174
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batterytip/a;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batterytip/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE anomaly(uid INTEGER NOT NULL, package_name TEXT, anomaly_type INTEGER NOT NULL, anomaly_state INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (uid,anomaly_type,anomaly_state,time_stamp_ms))"

    .line 179
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE action(uid INTEGER NOT NULL, package_name TEXT, action_type INTEGER NOT NULL, time_stamp_ms INTEGER NOT NULL,  PRIMARY KEY (action_type,uid,package_name))"

    .line 180
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "BatteryDatabaseHelper"

    const-string v0, "Bootstrapped database"

    .line 181
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS anomaly"

    .line 185
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS action"

    .line 186
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 152
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detected schema version \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'. Index needs to be rebuilt for schema version \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BatteryDatabaseHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detected schema version \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'. Index needs to be rebuilt for schema version \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BatteryDatabaseHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
