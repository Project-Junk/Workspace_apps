.class Lcom/color/eyeprotect/c/c$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/c/c;


# direct methods
.method public constructor <init>(Lcom/color/eyeprotect/c/c;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/c/c$a;->a:Lcom/color/eyeprotect/c/c;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/c/c$a;->a:Lcom/color/eyeprotect/c/c;

    invoke-static {v0}, Lcom/color/eyeprotect/c/c;->b(Lcom/color/eyeprotect/c/c;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/color/eyeprotect/c/c;->d()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/c/c$a;->a:Lcom/color/eyeprotect/c/c;

    invoke-static {v0}, Lcom/color/eyeprotect/c/c;->b(Lcom/color/eyeprotect/c/c;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/color/eyeprotect/c/c$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/color/eyeprotect/c/c$a;->a:Lcom/color/eyeprotect/c/c;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/color/eyeprotect/c/c;->a(Lcom/color/eyeprotect/c/c;Z)Z

    iget-object p2, p0, Lcom/color/eyeprotect/c/c$a;->a:Lcom/color/eyeprotect/c/c;

    invoke-static {p2}, Lcom/color/eyeprotect/c/c;->a(Lcom/color/eyeprotect/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lcom/color/eyeprotect/c/c$a;->a:Lcom/color/eyeprotect/c/c;

    invoke-static {p0, p1}, Lcom/color/eyeprotect/c/c;->a(Lcom/color/eyeprotect/c/c;Z)Z

    throw p2

    :catch_0
    :goto_0
    iget-object p0, p0, Lcom/color/eyeprotect/c/c$a;->a:Lcom/color/eyeprotect/c/c;

    invoke-static {p0, p1}, Lcom/color/eyeprotect/c/c;->a(Lcom/color/eyeprotect/c/c;Z)Z

    return-void
.end method
