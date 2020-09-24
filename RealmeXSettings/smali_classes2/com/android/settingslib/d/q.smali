.class public final Lcom/android/settingslib/d/q;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/q$a;
    }
.end annotation


# static fields
.field private static f:Lcom/android/settingslib/d/q;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/android/settingslib/d/p;

.field public final c:Lcom/android/settingslib/d/h;

.field public final d:Lcom/android/settingslib/d/s;

.field public final e:Lcom/android/settingslib/d/e;

.field private final g:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/p;Landroid/content/Context;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/d/q;->g:Landroid/content/Context;

    .line 112
    iput-object p1, p0, Lcom/android/settingslib/d/q;->b:Lcom/android/settingslib/d/p;

    .line 113
    new-instance p1, Lcom/android/settingslib/d/h;

    iget-object p2, p0, Lcom/android/settingslib/d/q;->g:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settingslib/d/h;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/q;)V

    iput-object p1, p0, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 114
    new-instance p1, Lcom/android/settingslib/d/e;

    iget-object p2, p0, Lcom/android/settingslib/d/q;->b:Lcom/android/settingslib/d/p;

    iget-object v0, p0, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    iget-object v1, p0, Lcom/android/settingslib/d/q;->g:Landroid/content/Context;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/settingslib/d/e;-><init>(Lcom/android/settingslib/d/p;Lcom/android/settingslib/d/h;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 116
    new-instance p1, Lcom/android/settingslib/d/s;

    iget-object p2, p0, Lcom/android/settingslib/d/q;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/d/q;->b:Lcom/android/settingslib/d/p;

    iget-object v1, p0, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    iget-object v2, p0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/settingslib/d/s;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/p;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/e;)V

    iput-object p1, p0, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 119
    iget-object p1, p0, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    invoke-virtual {p1}, Lcom/android/settingslib/d/s;->a()V

    .line 120
    iget-object p1, p0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    invoke-virtual {p1}, Lcom/android/settingslib/d/e;->b()Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/android/settingslib/d/q$a;)Lcom/android/settingslib/d/q;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/android/settingslib/d/q;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/android/settingslib/d/q;->f:Lcom/android/settingslib/d/q;

    if-nez v1, :cond_1

    .line 60
    invoke-static {}, Lcom/android/settingslib/d/p;->a()Lcom/android/settingslib/d/p;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 62
    monitor-exit v0

    return-object p0

    .line 65
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/settingslib/d/q;

    invoke-direct {v2, v1, p0}, Lcom/android/settingslib/d/q;-><init>(Lcom/android/settingslib/d/p;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settingslib/d/q;->f:Lcom/android/settingslib/d/q;

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/settingslib/d/q$a;->a()V

    .line 73
    :cond_1
    sget-object p0, Lcom/android/settingslib/d/q;->f:Lcom/android/settingslib/d/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/d/q;->a:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/settingslib/d/q;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    const-string p1, "LocalBluetoothManager"

    const-string v0, "setting foreground activity to null"

    .line 147
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/android/settingslib/d/q;->a:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
