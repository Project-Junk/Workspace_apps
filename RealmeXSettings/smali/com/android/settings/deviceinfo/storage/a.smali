.class public final Lcom/android/settings/deviceinfo/storage/a;
.super Ljava/lang/Object;
.source "CachedStorageValuesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:I

.field protected c:Lcom/android/settings/deviceinfo/storage/a$a;

.field private final d:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CachedStorageValues"

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    .line 59
    new-instance v0, Lcom/android/settings/deviceinfo/storage/a$a;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/a$a;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/a;->c:Lcom/android/settings/deviceinfo/storage/a$a;

    .line 60
    iput p2, p0, Lcom/android/settings/deviceinfo/storage/a;->b:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    .line 65
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string p2, "storage_settings_clobber_threshold"

    .line 62
    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/a;->d:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 158
    iget v1, p0, Lcom/android/settings/deviceinfo/storage/a;->b:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-wide v3, 0x7fffffffffffffffL

    const-string v1, "last_query_timestamp"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/a;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method
