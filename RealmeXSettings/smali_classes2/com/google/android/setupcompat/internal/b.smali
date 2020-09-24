.class public final Lcom/google/android/setupcompat/internal/b;
.super Ljava/lang/Object;
.source "ClockProvider.java"


# static fields
.field private static final a:Lcom/google/android/setupcompat/internal/j;

.field private static b:Lcom/google/android/setupcompat/internal/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lcom/google/android/setupcompat/internal/-$$Lambda$b$7gZrl2sYKWuED9boZ1lLkWAMYeM;->INSTANCE:Lcom/google/android/setupcompat/internal/-$$Lambda$b$7gZrl2sYKWuED9boZ1lLkWAMYeM;

    .line 48
    sput-object v0, Lcom/google/android/setupcompat/internal/b;->a:Lcom/google/android/setupcompat/internal/j;

    sput-object v0, Lcom/google/android/setupcompat/internal/b;->b:Lcom/google/android/setupcompat/internal/j;

    return-void
.end method

.method public static a()J
    .locals 2

    .line 26
    sget-object v0, Lcom/google/android/setupcompat/internal/b;->b:Lcom/google/android/setupcompat/internal/j;

    invoke-interface {v0}, Lcom/google/android/setupcompat/internal/j;->read()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .locals 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/google/android/setupcompat/internal/b;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic c()J
    .locals 2

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$7gZrl2sYKWuED9boZ1lLkWAMYeM()J
    .locals 2

    invoke-static {}, Lcom/google/android/setupcompat/internal/b;->c()J

    move-result-wide v0

    return-wide v0
.end method
