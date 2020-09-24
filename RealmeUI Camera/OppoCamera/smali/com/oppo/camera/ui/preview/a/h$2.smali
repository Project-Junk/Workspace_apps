.class Lcom/oppo/camera/ui/preview/a/h$2;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/g;Lcom/oppo/camera/sticker/data/StickerItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/sticker/data/StickerItem;

.field final synthetic b:Lcom/oppo/camera/ui/preview/a/g;

.field final synthetic c:Z

.field final synthetic d:Lcom/oppo/camera/ui/preview/a/h;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/a/h;Lcom/oppo/camera/sticker/data/StickerItem;Lcom/oppo/camera/ui/preview/a/g;Z)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/h$2;->d:Lcom/oppo/camera/ui/preview/a/h;

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/a/h$2;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    iput-object p3, p0, Lcom/oppo/camera/ui/preview/a/h$2;->b:Lcom/oppo/camera/ui/preview/a/g;

    iput-boolean p4, p0, Lcom/oppo/camera/ui/preview/a/h$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 559
    invoke-static {}, Lcom/oppo/camera/ui/preview/a/h;->f()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h$2;->d:Lcom/oppo/camera/ui/preview/a/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(IZ)V

    .line 563
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h$2;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h$2;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-virtual {v1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    .line 565
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h$2;->d:Lcom/oppo/camera/ui/preview/a/h;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/h;)Lcom/oppo/camera/ui/preview/a/h$c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/preview/a/h$c;->b(Ljava/lang/String;)V

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/h$2;->d:Lcom/oppo/camera/ui/preview/a/h;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/h;)Lcom/oppo/camera/ui/preview/a/h$c;

    move-result-object v1

    .line 569
    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/a/h$c;->c()Ljava/util/ArrayList;

    move-result-object v1

    .line 570
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/h$2;->d:Lcom/oppo/camera/ui/preview/a/h;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/ui/preview/a/h;)Lcom/oppo/camera/ui/preview/a/h$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a/h$c;->d()I

    move-result v2

    .line 571
    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/h$2;->b:Lcom/oppo/camera/ui/preview/a/g;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/h$2;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    iget-boolean v5, p0, Lcom/oppo/camera/ui/preview/a/h$2;->c:Z

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/oppo/camera/ui/preview/a/g;->a(Ljava/util/ArrayList;ILcom/oppo/camera/sticker/data/StickerItem;Z)V

    .line 572
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
