.class public final Lcom/android/settingslib/j/b;
.super Ljava/lang/Object;
.source "Estimate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/j/b$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/android/settingslib/j/b$a;


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settingslib/j/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/j/b$a;-><init>(B)V

    sput-object v0, Lcom/android/settingslib/j/b;->d:Lcom/android/settingslib/j/b$a;

    return-void
.end method

.method public constructor <init>(JZJ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/j/b;->a:J

    iput-boolean p3, p0, Lcom/android/settingslib/j/b;->b:Z

    iput-wide p4, p0, Lcom/android/settingslib/j/b;->c:J

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/android/settingslib/j/b;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v0, -0x1

    const-string v2, "battery_estimates_last_update_time"

    .line 1045
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1044
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 1047
    check-cast v2, Ljava/time/temporal/Temporal;

    .line 1048
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    check-cast v3, Ljava/time/temporal/Temporal;

    .line 1047
    invoke-static {v2, v3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v2

    const-wide/16 v3, 0x1

    .line 1048
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1050
    :cond_0
    new-instance v6, Lcom/android/settingslib/j/b;

    const-string v2, "time_remaining_estimate_millis"

    .line 1051
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x0

    const-string v5, "time_remaining_estimate_based_on_usage"

    .line 1054
    invoke-static {p0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    move v4, v7

    :cond_1
    const-string v5, "average_time_to_discharge"

    .line 1056
    invoke-static {p0, v5, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    move-object v0, v6

    move-wide v1, v2

    move v3, v4

    move-wide v4, v7

    .line 1050
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/j/b;-><init>(JZJ)V

    return-object v6
.end method

.method public static final b(Landroid/content/Context;)Ljava/time/Instant;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "battery_estimates_last_update_time"

    const-wide/16 v1, -0x1

    .line 1087
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1086
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    const-string v0, "Instant.ofEpochMilli(\n  \u2026                     -1))"

    invoke-static {p0, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
