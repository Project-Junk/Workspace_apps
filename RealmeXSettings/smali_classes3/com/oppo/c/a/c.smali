.class public final Lcom/oppo/c/a/c;
.super Ljava/lang/Object;
.source "PageVisitAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/c/a/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/c/a/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

    .line 77
    invoke-static {p0}, Lcom/oppo/c/d/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {p0}, Lcom/oppo/c/d/a;->e(Landroid/content/Context;)I

    move-result v1

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Lcom/oppo/c/b/g;

    invoke-direct {v2}, Lcom/oppo/c/b/g;-><init>()V

    .line 1045
    iput-object v0, v2, Lcom/oppo/c/b/g;->c:Ljava/lang/String;

    int-to-long v0, v1

    .line 2037
    iput-wide v0, v2, Lcom/oppo/c/b/g;->b:J

    .line 83
    invoke-static {}, Lcom/oppo/c/e/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 3029
    iput-object v0, v2, Lcom/oppo/c/b/g;->a:Ljava/lang/String;

    .line 84
    invoke-static {p0, v2}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Lcom/oppo/c/b/j;)V

    :cond_0
    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v0}, Lcom/oppo/c/d/a;->a(Landroid/content/Context;I)V

    const-string v0, ""

    .line 87
    invoke-static {p0, v0}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
