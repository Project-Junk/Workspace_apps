.class public final Lcom/android/settings/dashboard/g;
.super Ljava/lang/Object;
.source "UiBlockerController.java"


# instance fields
.field a:Ljava/util/concurrent/CountDownLatch;

.field b:Z

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/g;-><init>(Ljava/util/List;B)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;B)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;B)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/dashboard/g;->a:Ljava/util/concurrent/CountDownLatch;

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/dashboard/g;->b:Z

    .line 54
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/settings/dashboard/g;->c:Ljava/util/Set;

    const-wide/16 p1, 0x1f4

    .line 55
    iput-wide p1, p0, Lcom/android/settings/dashboard/g;->d:J

    return-void
.end method

.method private synthetic b(Ljava/lang/Runnable;)V
    .locals 4

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/g;->a:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/android/settings/dashboard/g;->d:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UiBlockerController"

    const-string v1, "interrupted"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/dashboard/g;->b:Z

    .line 76
    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$grG_I5rFbei5SFi6QZfeWfc6_HY(Lcom/android/settings/dashboard/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/g;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/dashboard/g;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$g$grG_I5rFbei5SFi6QZfeWfc6_HY;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/dashboard/-$$Lambda$g$grG_I5rFbei5SFi6QZfeWfc6_HY;-><init>(Lcom/android/settings/dashboard/g;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    return p1
.end method
