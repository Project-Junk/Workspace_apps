.class public Lcom/color/eyeprotect/a/b/b;
.super Landroid/database/ContentObserver;


# static fields
.field private static volatile c:Lcom/color/eyeprotect/a/b/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/color/eyeprotect/a/b/b;->a:Landroid/content/Context;

    const-string p1, "log_switch_type"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/a/b/b;->b:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/color/eyeprotect/a/b/b;
    .locals 2

    sget-object v0, Lcom/color/eyeprotect/a/b/b;->c:Lcom/color/eyeprotect/a/b/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/color/eyeprotect/a/b/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/color/eyeprotect/a/b/b;->c:Lcom/color/eyeprotect/a/b/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/color/eyeprotect/a/b/b;

    invoke-direct {v1, p0}, Lcom/color/eyeprotect/a/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/color/eyeprotect/a/b/b;->c:Lcom/color/eyeprotect/a/b/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/color/eyeprotect/a/b/b;->c:Lcom/color/eyeprotect/a/b/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/color/eyeprotect/a/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/a/b/b;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LogSwitchObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops! Exception on register: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/color/eyeprotect/a/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/color/eyeprotect/a/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LogSwitchObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops! Exception on unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/color/eyeprotect/a/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onChange(Z)V
    .locals 0

    invoke-static {}, Lcom/color/eyeprotect/a/b/c;->a()V

    return-void
.end method
