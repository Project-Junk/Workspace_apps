.class public Lcom/oppo/music/media/Playlist;
.super Ljava/lang/Object;
.source "Playlist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppo/music/media/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_DIGITS:[C

.field private static final ITEM_REVERSE_HEX_SPLIT:Ljava/lang/String; = ","

.field private static final LIST_REVERSE_HEX_SPLIT:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "Playlist"


# instance fields
.field private mPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oppo/music/media/PlaylistItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/oppo/music/media/Playlist$1;

    invoke-direct {v0}, Lcom/oppo/music/media/Playlist$1;-><init>()V

    sput-object v0, Lcom/oppo/music/media/Playlist;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0x10

    .line 166
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/music/media/Playlist;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    .line 22
    sget-object v0, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    return-void
.end method

.method private static longToReverseHex(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-string p0, "0"

    goto :goto_1

    .line 179
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    cmp-long v3, p0, v0

    if-lez v3, :cond_1

    const-wide/16 v3, 0xf

    and-long/2addr v3, p0

    long-to-int v3, v3

    const/4 v4, 0x4

    shr-long/2addr p0, v4

    .line 184
    sget-object v4, Lcom/oppo/music/media/Playlist;->HEX_DIGITS:[C

    aget-char v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static playlistToReverseHex(Lcom/oppo/music/media/Playlist;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->getPlaylistItems()[Lcom/oppo/music/media/PlaylistItem;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v3}, Lcom/oppo/music/media/PlaylistItem;->getType()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/oppo/music/media/Playlist;->longToReverseHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v3}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/oppo/music/media/Playlist;->longToReverseHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static reverseHexToLong(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    const/4 v3, 0x4

    shl-long/2addr v0, v3

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x30

    :goto_1
    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_2

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v5, 0x46

    if-gt v3, v5, :cond_1

    add-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v4

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static reverseHexToPlaylist(Ljava/lang/String;)Lcom/oppo/music/media/Playlist;
    .locals 8

    if-eqz p0, :cond_1

    const-string v0, ";"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 240
    array-length v0, p0

    if-lez v0, :cond_1

    .line 241
    new-instance v0, Lcom/oppo/music/media/Playlist;

    invoke-direct {v0}, Lcom/oppo/music/media/Playlist;-><init>()V

    .line 243
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_0

    const-string v5, ","

    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 246
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 247
    aget-object v5, v4, v2

    invoke-static {v5}, Lcom/oppo/music/media/Playlist;->reverseHexToLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x1

    .line 248
    aget-object v4, v4, v6

    invoke-static {v4}, Lcom/oppo/music/media/Playlist;->reverseHexToLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 250
    new-instance v4, Lcom/oppo/music/media/PlaylistItem;

    invoke-direct {v4, v5, v6, v7}, Lcom/oppo/music/media/PlaylistItem;-><init>(IJ)V

    .line 251
    invoke-virtual {v0, v4}, Lcom/oppo/music/media/Playlist;->addPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addPlaylistItem(ILcom/oppo/music/media/PlaylistItem;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public copy()Lcom/oppo/music/media/Playlist;
    .locals 3

    .line 263
    new-instance v0, Lcom/oppo/music/media/Playlist;

    invoke-direct {v0}, Lcom/oppo/music/media/Playlist;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/music/media/PlaylistItem;

    invoke-virtual {v0, v2}, Lcom/oppo/music/media/Playlist;->addPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dumpInfo()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 94
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/music/media/PlaylistItem;

    invoke-virtual {v2}, Lcom/oppo/music/media/PlaylistItem;->dumpInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 108
    instance-of v1, p1, Lcom/oppo/music/media/Playlist;

    if-eqz v1, :cond_3

    .line 109
    check-cast p1, Lcom/oppo/music/media/Playlist;

    .line 111
    invoke-virtual {p1}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 119
    invoke-virtual {p1, v1}, Lcom/oppo/music/media/Playlist;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 120
    iget-object v3, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/music/media/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    if-ne v1, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getItemIDs()[J
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/music/media/PlaylistItem;

    invoke-virtual {v2}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;
    .locals 2

    if-ltz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/music/media/PlaylistItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p1

    const-string p0, "getPlaylistItem() index is out of bound. index=%s, size=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Playlist"

    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPlaylistItems()[Lcom/oppo/music/media/PlaylistItem;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oppo/music/media/PlaylistItem;

    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/music/media/PlaylistItem;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public removePlaylistItem(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/music/media/PlaylistItem;

    goto :goto_0

    :cond_0
    const-string p0, "Playlist"

    const-string p1, "removePlaylistItem() location is out of bound."

    .line 40
    invoke-static {p0, p1}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->dumpInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
