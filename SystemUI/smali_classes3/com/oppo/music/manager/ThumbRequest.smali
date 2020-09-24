.class public Lcom/oppo/music/manager/ThumbRequest;
.super Lcom/oppo/music/manager/Request;
.source "ThumbRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbRequest"


# instance fields
.field private mItems:[Lcom/oppo/music/media/PlaylistItem;

.field private mThumbPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oppo/music/media/PlaylistItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/oppo/music/media/PlaylistItem;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/oppo/music/manager/Request;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/manager/ThumbRequest;->mThumbPaths:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbRequest, mItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbRequest"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbRequest, mItems.length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 37
    invoke-static {v3}, Lcom/oppo/music/utils/PlayServiceUtils;->getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v4

    .line 38
    iget-object v5, p0, Lcom/oppo/music/manager/ThumbRequest;->mThumbPaths:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPlaylistItem()[Lcom/oppo/music/media/PlaylistItem;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    return-object p0
.end method

.method public getThumbPath()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/oppo/music/media/PlaylistItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/oppo/music/manager/ThumbRequest;->mThumbPaths:Ljava/util/Map;

    return-object p0
.end method
