.class public final Lb/a/c/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:J

.field public static g:Lb/a/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lb/a/a/n;->a(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lb/a/c/m;->a:J

    const-string v2, "kotlinx.coroutines.scheduler.offload.threshold"

    const/16 v3, 0x60

    const/4 v4, 0x0

    const/16 v5, 0x80

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lb/a/a/n;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lb/a/c/m;->b:I

    const-string v1, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lb/a/a/n;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lb/a/c/m;->c:I

    const-string v1, "kotlinx.coroutines.scheduler.core.pool.size"

    invoke-static {}, Lb/a/a/n;->a()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, La/e/d;->c(II)I

    move-result v2

    const/4 v3, 0x1

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Lb/a/a/n;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lb/a/c/m;->d:I

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    invoke-static {}, Lb/a/a/n;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    sget v2, Lb/a/c/m;->d:I

    const v3, 0x1ffffe

    invoke-static {v0, v2, v3}, La/e/d;->a(III)I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x1ffffe

    const/4 v5, 0x4

    invoke-static/range {v1 .. v6}, Lb/a/a/n;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lb/a/c/m;->e:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lb/a/a/n;->a(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lb/a/c/m;->f:J

    sget-object v0, Lb/a/c/g;->a:Lb/a/c/g;

    check-cast v0, Lb/a/c/n;

    sput-object v0, Lb/a/c/m;->g:Lb/a/c/n;

    return-void
.end method
