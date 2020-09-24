.class public interface abstract Lcom/oppo/music/media/TrackInterface;
.super Ljava/lang/Object;
.source "TrackInterface.java"


# virtual methods
.method public abstract dumpInfo()Ljava/lang/String;
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

.method public abstract getAlbumID()J
.end method

.method public abstract getAlbumName()Ljava/lang/String;
.end method

.method public abstract getArtistID()J
.end method

.method public abstract getArtistName()Ljava/lang/String;
.end method

.method public abstract getBitrate()Ljava/lang/String;
.end method

.method public abstract getBitrates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCachingSize()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getEndPos()J
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getLyricPath()Ljava/lang/String;
.end method

.method public abstract getLyricUrl()Ljava/lang/String;
.end method

.method public abstract getSongUrl()Ljava/lang/String;
.end method

.method public abstract getStartPos()J
.end method

.method public abstract getTrackID()J
.end method

.method public abstract getTrackName()Ljava/lang/String;
.end method

.method public abstract getTrackThumbPath()Ljava/lang/String;
.end method

.method public abstract getTrackThumbUrl()Ljava/lang/String;
.end method

.method public abstract isOnline()Z
.end method

.method public abstract setAbsolutePath(Ljava/lang/String;)V
.end method

.method public abstract setAlbumID(J)V
.end method

.method public abstract setAlbumName(Ljava/lang/String;)V
.end method

.method public abstract setArtistID(J)V
.end method

.method public abstract setArtistName(Ljava/lang/String;)V
.end method

.method public abstract setBitrate(Ljava/lang/String;)V
.end method

.method public abstract setBitrates(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEndPos(J)V
.end method

.method public abstract setLyricPath(Ljava/lang/String;)V
.end method

.method public abstract setLyricUrl(Ljava/lang/String;)V
.end method

.method public abstract setSongUrl(Ljava/lang/String;)V
.end method

.method public abstract setStartPos(J)V
.end method

.method public abstract setTrackID(J)V
.end method

.method public abstract setTrackName(Ljava/lang/String;)V
.end method

.method public abstract setTrackThumbPath(Ljava/lang/String;)V
.end method

.method public abstract setTrackThumbUrl(Ljava/lang/String;)V
.end method
