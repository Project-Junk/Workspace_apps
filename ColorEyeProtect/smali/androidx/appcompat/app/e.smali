.class public abstract Landroidx/appcompat/app/e;
.super Ljava/lang/Object;


# static fields
.field private static a:I = -0x64

.field private static final b:Landroidx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/b<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/b/b;

    invoke-direct {v0}, Landroidx/b/b;-><init>()V

    sput-object v0, Landroidx/appcompat/app/e;->b:Landroidx/b/b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/e;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/e;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/f;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/d;)V

    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/e;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/f;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/d;)V

    return-object v0
.end method

.method static a(Landroidx/appcompat/app/e;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/app/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/e;->c(Landroidx/appcompat/app/e;)V

    sget-object v1, Landroidx/appcompat/app/e;->b:Landroidx/b/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static b(Landroidx/appcompat/app/e;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/app/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/e;->c(Landroidx/appcompat/app/e;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static c(Landroidx/appcompat/app/e;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/app/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/app/e;->b:Landroidx/b/b;

    invoke-virtual {v1}, Landroidx/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/e;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static k()I
    .locals 1

    sget v0, Landroidx/appcompat/app/e;->a:I

    return v0
.end method


# virtual methods
.method public abstract a()Landroidx/appcompat/app/a;
.end method

.method public abstract a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract b(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d()V
.end method

.method public abstract d(I)Z
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()Landroidx/appcompat/app/b$a;
.end method

.method public abstract i()V
.end method

.method public j()I
    .locals 0

    const/16 p0, -0x64

    return p0
.end method
