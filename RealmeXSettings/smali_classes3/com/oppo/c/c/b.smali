.class public final Lcom/oppo/c/c/b;
.super Ljava/lang/Object;
.source "StatIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/c/c/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/oppo/c/c/b;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/oppo/c/c/b;->b:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/oppo/c/c/b;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DCS-"

    const-string v1, "test refreshAppSessionIdIfNeed"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/c/c/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/c/c/b;->c(Landroid/content/Context;)V

    return-void

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/oppo/c/c/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/c/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 1058
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/oppo/c/c/b;->a:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/oppo/c/c/b;->a:Ljava/lang/String;

    const-string v1, "AppSessionId"

    .line 1080
    invoke-static {p1, v1, v0}, Lcom/oppo/c/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/content/Context;)Z
    .locals 6

    .line 62
    iget-wide v0, p0, Lcom/oppo/c/c/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "AppExitTime"

    .line 2076
    invoke-static {p1, v0}, Lcom/oppo/c/d/a;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 63
    iput-wide v0, p0, Lcom/oppo/c/c/b;->b:J

    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/oppo/c/c/b;->b:J

    sub-long/2addr v0, v4

    .line 67
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v4, "test isAppSessionIdFresh timeGap="

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "DCS-"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const-wide/16 v2, 0x7530

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "AppSessionId"

    const-string v1, ""

    .line 84
    invoke-static {p0, v0, v1}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/oppo/c/c/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0, p1}, Lcom/oppo/c/c/b;->b(Landroid/content/Context;)V

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/oppo/c/c/b;->a:Ljava/lang/String;

    return-object p1
.end method
