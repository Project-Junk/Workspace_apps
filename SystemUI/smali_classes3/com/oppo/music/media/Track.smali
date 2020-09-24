.class public Lcom/oppo/music/media/Track;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Lcom/oppo/music/media/TrackInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppo/music/media/Track;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_ID:I


# instance fields
.field private bitrates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAbsolutePath:Ljava/lang/String;

.field protected mAlbumID:J

.field protected mAlbumName:Ljava/lang/String;

.field protected mArtistID:J

.field protected mArtistName:Ljava/lang/String;

.field protected mBitrate:Ljava/lang/String;

.field protected mBitrates:Ljava/lang/String;

.field protected mCachingSize:J

.field protected mContext:Landroid/content/Context;

.field protected mEndPos:J

.field protected mFileSize:J

.field protected mLyricPath:Ljava/lang/String;

.field protected mLyricUrl:Ljava/lang/String;

.field protected mSongUrl:Ljava/lang/String;

.field protected mStartPos:J

.field protected mTrackID:J

.field protected mTrackName:Ljava/lang/String;

.field protected mTrackThumbPath:Ljava/lang/String;

.field protected mTrackThumbUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 310
    new-instance v0, Lcom/oppo/music/media/Track$1;

    invoke-direct {v0}, Lcom/oppo/music/media/Track$1;-><init>()V

    sput-object v0, Lcom/oppo/music/media/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mContext:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    .line 23
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    .line 24
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    .line 25
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    .line 26
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    .line 27
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mBitrate:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mBitrates:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mSongUrl:Ljava/lang/String;

    .line 32
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mCachingSize:J

    .line 33
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mFileSize:J

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/media/Track;->bitrates:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mContext:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    .line 23
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    .line 24
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    .line 25
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    .line 26
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    .line 27
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mBitrate:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mBitrates:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mSongUrl:Ljava/lang/String;

    .line 32
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mCachingSize:J

    .line 33
    iput-wide v1, p0, Lcom/oppo/music/media/Track;->mFileSize:J

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/media/Track;->bitrates:Ljava/util/List;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mSongUrl:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mCachingSize:J

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mFileSize:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dumpInfo()Ljava/lang/String;
    .locals 7

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 206
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "mAbsolutePath = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "mLyricPath = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "mTrackThumbPath = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "mTrackName = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "mAlbumName = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "mArtistName = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "mTrackID = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "mAlbumID = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "mArtistID = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "mStartPos = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "mEndPos = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "mTrackThumbUrl = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    aput-object p0, v1, v4

    const-string p0, "mLyricUrl = %s\n"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 272
    instance-of v0, p1, Lcom/oppo/music/media/Track;

    if-eqz v0, :cond_0

    .line 273
    check-cast p1, Lcom/oppo/music/media/Track;

    .line 274
    iget-wide v0, p1, Lcom/oppo/music/media/Track;->mTrackID:J

    iget-wide p0, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    return-object p0
.end method

.method public getAlbumID()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    return-object p0
.end method

.method public getArtistID()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    return-object p0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mBitrate:Ljava/lang/String;

    return-object p0
.end method

.method public getBitrates()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/oppo/music/media/Track;->bitrates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mBitrates:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mBitrates:Ljava/lang/String;

    .line 148
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ","

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 150
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/oppo/music/media/Track;->bitrates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/oppo/music/media/Track;->bitrates:Ljava/util/List;

    return-object p0
.end method

.method public getCachingSize()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mCachingSize:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 180
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    iget-wide v2, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEndPos()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .line 244
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mFileSize:J

    return-wide v0
.end method

.method public getLyricPath()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLyricUrl()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSongUrl()Ljava/lang/String;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mSongUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPos()J
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    return-wide v0
.end method

.method public getTrackID()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    return-wide v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackThumbPath()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackThumbUrl()Ljava/lang/String;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isOnline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    return-void
.end method

.method public setAlbumID(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method public setArtistID(J)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    return-void
.end method

.method public setBitrate(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mBitrate:Ljava/lang/String;

    return-void
.end method

.method public setBitrates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/oppo/music/media/Track;->bitrates:Ljava/util/List;

    return-void
.end method

.method public setEndPos(J)V
    .locals 0

    .line 170
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    return-void
.end method

.method public setLyricPath(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    return-void
.end method

.method public setLyricUrl(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    return-void
.end method

.method public setSongUrl(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mSongUrl:Ljava/lang/String;

    return-void
.end method

.method public setStartPos(J)V
    .locals 0

    .line 160
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    return-void
.end method

.method public setTrackID(J)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    return-void
.end method

.method public setTrackName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    return-void
.end method

.method public setTrackThumbPath(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    return-void
.end method

.method public setTrackThumbUrl(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 282
    invoke-virtual {p0}, Lcom/oppo/music/media/Track;->dumpInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 292
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lcom/oppo/music/media/Track;->mSongUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mCachingSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
