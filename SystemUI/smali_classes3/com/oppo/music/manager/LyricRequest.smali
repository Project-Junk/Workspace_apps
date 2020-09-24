.class public Lcom/oppo/music/manager/LyricRequest;
.super Lcom/oppo/music/manager/Request;
.source "LyricRequest.java"


# instance fields
.field private mItems:[Lcom/oppo/music/media/PlaylistItem;

.field private mLyricPaths:Ljava/util/Map;
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

    .line 15
    invoke-direct {p0}, Lcom/oppo/music/manager/Request;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/manager/LyricRequest;->mLyricPaths:Ljava/util/Map;

    .line 16
    iput-object p1, p0, Lcom/oppo/music/manager/LyricRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/oppo/music/manager/LyricRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    if-eqz v0, :cond_0

    .line 30
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 31
    invoke-static {v3}, Lcom/oppo/music/utils/PlayServiceUtils;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v4

    .line 32
    iget-object v5, p0, Lcom/oppo/music/manager/LyricRequest;->mLyricPaths:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLyricPath()Ljava/util/Map;
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

    .line 20
    iget-object p0, p0, Lcom/oppo/music/manager/LyricRequest;->mLyricPaths:Ljava/util/Map;

    return-object p0
.end method

.method public getPlaylistItem()[Lcom/oppo/music/media/PlaylistItem;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oppo/music/manager/LyricRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    return-object p0
.end method
