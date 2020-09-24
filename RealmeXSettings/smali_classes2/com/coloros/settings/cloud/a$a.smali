.class final Lcom/coloros/settings/cloud/a$a;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/cloud/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/media/MediaScannerConnection;

.field private final b:Ljava/lang/Object;

.field private volatile c:Z

.field private volatile d:Z

.field private e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/coloros/settings/cloud/a$a;->c:Z

    .line 94
    iput-boolean v0, p0, Lcom/coloros/settings/cloud/a$a;->d:Z

    .line 98
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/coloros/settings/cloud/a$a;->a:Landroid/media/MediaScannerConnection;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/cloud/a$a;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/cloud/a$a;->a()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/cloud/a$a;->a:Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 120
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/settings/cloud/a$a;->d:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    :cond_1
    const-string v0, "MediaScanner"

    const-string v1, "scan ... wait"

    .line 123
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MediaScanner"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "scan ... mResult="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/cloud/a$a;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaScanner"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/cloud/a$a;->e:Landroid/net/Uri;

    return-object p1

    .line 127
    :goto_3
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method final a()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/cloud/a$a;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/cloud/a$a;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/settings/cloud/a$a;->c:Z

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "MediaScanner"

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final onMediaScannerConnected()V
    .locals 2

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/coloros/settings/cloud/a$a;->c:Z

    const-string v0, "MediaScanner"

    const-string v1, "onMediaScannerConnected"

    .line 135
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 143
    iput-object p2, p0, Lcom/coloros/settings/cloud/a$a;->e:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/coloros/settings/cloud/a$a;->d:Z

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onScanCompleted ... mResult="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/cloud/a$a;->e:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaScanner"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 147
    :try_start_0
    iget-object p2, p0, Lcom/coloros/settings/cloud/a$a;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 148
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
