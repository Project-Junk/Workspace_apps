.class public final Lb/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/bc;


# static fields
.field public static final a:Lb/a/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/y;

    invoke-direct {v0}, Lb/a/y;-><init>()V

    sput-object v0, Lb/a/y;->a:Lb/a/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    const-string p0, "block"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 0

    const-string p0, "blocker"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    return-void
.end method

.method public a(Ljava/lang/Thread;)V
    .locals 0

    const-string p0, "thread"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
