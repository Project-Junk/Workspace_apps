.class final Lcom/coloros/settings/feature/face/b$a;
.super Ljava/lang/Object;
.source "FaceGuideVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/b;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/face/b;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/coloros/settings/feature/face/b$a;->a:Lcom/coloros/settings/feature/face/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/face/b;B)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/b$a;-><init>(Lcom/coloros/settings/feature/face/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b$a;->a:Lcom/coloros/settings/feature/face/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/b$a;->a:Lcom/coloros/settings/feature/face/b;

    .line 1029
    iget-object v1, v1, Lcom/coloros/settings/feature/face/b;->c:Landroid/content/Context;

    const v2, 0x7f110029

    .line 102
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 2029
    iput-object v1, v0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b$a;->a:Lcom/coloros/settings/feature/face/b;

    .line 3029
    iget-object v0, v0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;

    .line 103
    iget-object v1, p0, Lcom/coloros/settings/feature/face/b$a;->a:Lcom/coloros/settings/feature/face/b;

    .line 4029
    iget-object v1, v1, Lcom/coloros/settings/feature/face/b;->b:Landroid/view/Surface;

    .line 103
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b$a;->a:Lcom/coloros/settings/feature/face/b;

    .line 5029
    iget-object v0, v0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    .line 104
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b$a;->a:Lcom/coloros/settings/feature/face/b;

    .line 6029
    iget-object v0, v0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b$a;->a:Lcom/coloros/settings/feature/face/b;

    .line 7029
    iget-object v0, v0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;

    .line 106
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceGuideVideoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
