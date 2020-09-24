.class public Lcom/oppo/camera/ui/preview/a/p;
.super Ljava/lang/Object;
.source "TexturePreviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/a/p$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oppo/camera/sticker/data/StickerItem;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:[I

.field private h:[I

.field private i:Ljava/lang/String;

.field private j:Lcom/oppo/camera/ui/preview/a/p$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/oppo/camera/ui/preview/a/p;->b:I

    const-string v2, "default"

    .line 23
    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/p;->c:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/oppo/camera/ui/preview/a/p;->d:I

    .line 25
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/p;->e:Z

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/p;->f:Z

    .line 27
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->g:[I

    .line 28
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->h:[I

    .line 29
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->i:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->j:Lcom/oppo/camera/ui/preview/a/p$a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/oppo/camera/ui/preview/a/p;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/oppo/camera/ui/preview/a/p;->b:I

    return-void
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/p;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/p$a;)V
    .locals 1

    .line 131
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/p;->j:Lcom/oppo/camera/ui/preview/a/p$a;

    .line 133
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/p;->j:Lcom/oppo/camera/ui/preview/a/p$a;

    if-eqz p1, :cond_0

    .line 134
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/p;->f:Z

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/preview/a/p$a;->b(Z)V

    .line 135
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/p;->j:Lcom/oppo/camera/ui/preview/a/p$a;

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/preview/a/p$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/p;->c:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->j:Lcom/oppo/camera/ui/preview/a/p$a;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/p$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/p;->e:Z

    return-void
.end method

.method public a([I)V
    .locals 0

    .line 89
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/p;->h:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/p;->h:[I

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/oppo/camera/ui/preview/a/p;->d:I

    return-void
.end method

.method public b()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/p;->e:Z

    return v0
.end method

.method public c()Lcom/oppo/camera/sticker/data/StickerItem;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/p;->f:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->a:Lcom/oppo/camera/sticker/data/StickerItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()[I
    .locals 1

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->h:[I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()I
    .locals 1

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->h:[I

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->h:[I

    array-length v0, v0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 110
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/oppo/camera/ui/preview/a/p;->d:I

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/p;->j:Lcom/oppo/camera/ui/preview/a/p$a;

    return-void
.end method
