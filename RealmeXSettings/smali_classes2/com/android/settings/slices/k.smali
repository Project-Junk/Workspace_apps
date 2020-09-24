.class public final Lcom/android/settings/slices/k;
.super Ljava/lang/Object;
.source "SlicesFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/slices/j;


# instance fields
.field private a:J

.field private b:Lcom/android/settings/slices/l;

.field private c:Lcom/android/settings/slices/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f(Landroid/content/Context;)Lcom/android/settings/slices/l;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/slices/k;->b:Lcom/android/settings/slices/l;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/settings/slices/l;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/slices/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/k;->b:Lcom/android/settings/slices/l;

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/android/settings/slices/k;->b:Lcom/android/settings/slices/l;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/b;
    .locals 1

    .line 78
    invoke-static {p2}, Lcom/android/settings/slices/a;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/android/settings/slices/a;->a(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p1, v0}, Lcom/android/settings/slices/b;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/slices/b;

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "No Slice found for uri: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;)Lcom/android/settings/slices/f;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settings/slices/k;->c:Lcom/android/settings/slices/f;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/settings/slices/f;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/slices/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/k;->c:Lcom/android/settings/slices/f;

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/settings/slices/k;->c:Lcom/android/settings/slices/f;

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/slices/k;->a:J

    return-void
.end method

.method public final b()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/android/settings/slices/k;->a:J

    return-wide v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/slices/k;->f(Landroid/content/Context;)Lcom/android/settings/slices/l;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/slices/k;->f(Landroid/content/Context;)Lcom/android/settings/slices/l;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/android/settings/slices/l;->a()V

    return-void
.end method

.method public final d(Landroid/content/Context;)Lcom/android/settings/wifi/calling/d;
    .locals 1

    .line 68
    new-instance v0, Lcom/android/settings/wifi/calling/d;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/calling/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e(Landroid/content/Context;)Lcom/android/settings/network/telephony/c;
    .locals 1

    .line 73
    new-instance v0, Lcom/android/settings/network/telephony/c;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
