.class public final Lcom/coloros/partners/dirac/a;
.super Ljava/lang/Object;
.source "DiracApplication.java"


# static fields
.field public static a:Z = true

.field private static b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a()Landroid/app/Application;
    .locals 2

    const-class v0, Lcom/coloros/partners/dirac/a;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/coloros/partners/dirac/a;->b:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    .line 31
    sput-object p0, Lcom/coloros/partners/dirac/a;->b:Landroid/app/Application;

    .line 32
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/a;->b(Landroid/content/Context;)V

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    .line 1019
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
