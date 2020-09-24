.class public Lcom/oppo/music/cahce/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/oppo/music/cahce/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;,
        Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20120504

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x6400000

.field private static final HYSTERESIS_FACTOR:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "DiskBasedCache"


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0x6400000

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/oppo/music/cahce/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    .line 72
    iput-object p1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 73
    iput p2, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pruneIfNeeded(I)V
    .locals 13

    .line 258
    iget-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "DiskBasedCache"

    const-string v0, "pruneIfNeeded, Pruning old cache entries."

    .line 261
    invoke-static {p1, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    const/4 v4, 0x0

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 266
    iget-object v7, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 267
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 268
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;

    .line 270
    iget-object v9, v8, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/oppo/music/cahce/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 272
    iget-wide v9, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    iget-wide v11, v8, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    goto :goto_0

    .line 274
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not delete cache entry for key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " filename="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/oppo/music/cahce/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v4, v4, 0x1

    .line 280
    iget-wide v8, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    add-long/2addr v8, v2

    long-to-float v8, v8

    iget v9, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v9, v9

    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 285
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pruned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " files "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "bytes "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private putEntry(Ljava/lang/String;Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;)V
    .locals 7

    .line 296
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    iget-wide v2, p2, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;

    .line 300
    iget-wide v1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p2, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->size:J

    iget-wide v5, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    .line 302
    :goto_0
    iget-object p0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 477
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    .line 492
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 493
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 494
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    .line 512
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 513
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 514
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 515
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 516
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 517
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 518
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 530
    invoke-static {p0, v0}, Lcom/oppo/music/cahce/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 531
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 552
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private removeEntry(Ljava/lang/String;)V
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;

    if-eqz v0, :cond_0

    .line 311
    iget-wide v1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    iget-wide v3, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    .line 312
    iget-object p0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    .line 323
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    return-object v0

    .line 327
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, read "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 483
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 484
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 485
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 486
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 499
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 500
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 501
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 502
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 503
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 504
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 505
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 506
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 523
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 524
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/oppo/music/cahce/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 525
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method static writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 536
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oppo/music/cahce/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 537
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/oppo/music/cahce/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 539
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppo/music/cahce/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 542
    invoke-static {p1, p0}, Lcom/oppo/music/cahce/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mTotalSize:J

    const-string v0, "DiskBasedCache"

    const-string v1, "clear, Cache cleared."

    .line 98
    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/oppo/music/cahce/Cache$Entry;
    .locals 8

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    monitor-exit p0

    return-object v1

    .line 111
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 114
    :try_start_2
    new-instance v3, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-static {v3}, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, v3, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->bytesRead:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v3, v4}, Lcom/oppo/music/cahce/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 117
    invoke-virtual {v0, v4}, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/oppo/music/cahce/Cache$Entry;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :try_start_4
    invoke-virtual {v3}, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 127
    monitor-exit p0

    return-object p1

    :catch_0
    monitor-exit p0

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v1

    :goto_0
    :try_start_5
    const-string v4, "DiskBasedCache"

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "e="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_1

    .line 125
    :try_start_6
    invoke-virtual {v3}, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 127
    :catch_3
    monitor-exit p0

    return-object v1

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v3, :cond_2

    .line 125
    :try_start_7
    invoke-virtual {v3}, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 127
    :catch_4
    monitor-exit p0

    return-object v1

    :cond_2
    :goto_3
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 250
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 8

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to create cache dir %s"

    .line 141
    iget-object v1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 143
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_2

    .line 148
    monitor-exit p0

    return-void

    .line 150
    :cond_2
    :try_start_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v4, 0x0

    .line 153
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    :try_start_4
    invoke-static {v5}, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;

    move-result-object v4

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->size:J

    .line 156
    iget-object v6, v4, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/oppo/music/cahce/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catch_0
    move-exception v3

    .line 167
    :goto_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v4

    goto :goto_3

    :catch_2
    :goto_2
    if-eqz v3, :cond_4

    .line 159
    :try_start_7
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :goto_3
    if-eqz v5, :cond_3

    .line 164
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_3
    move-exception v1

    .line 167
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    :cond_3
    :goto_4
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    .line 164
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    :catch_4
    move-exception v3

    goto :goto_1

    :cond_5
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_6
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 180
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->get(Ljava/lang/String;)Lcom/oppo/music/cahce/Cache$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    .line 182
    iput-wide v1, v0, Lcom/oppo/music/cahce/Cache$Entry;->softTtl:J

    if-eqz p2, :cond_0

    .line 184
    iput-wide v1, v0, Lcom/oppo/music/cahce/Cache$Entry;->ttl:J

    .line 186
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oppo/music/cahce/DiskBasedCache;->put(Ljava/lang/String;Lcom/oppo/music/cahce/Cache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/oppo/music/cahce/Cache$Entry;)V
    .locals 3

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to create cache dir %s"

    .line 198
    iget-object v1, p0, Lcom/oppo/music/cahce/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v0, p2, Lcom/oppo/music/cahce/Cache$Entry;->data:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/oppo/music/cahce/DiskBasedCache;->pruneIfNeeded(I)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 206
    new-instance v2, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;

    invoke-direct {v2, p1, p2}, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/oppo/music/cahce/Cache$Entry;)V

    .line 207
    invoke-virtual {v2, v1}, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    .line 208
    iget-object p2, p2, Lcom/oppo/music/cahce/Cache$Entry;->data:[B

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 210
    invoke-direct {p0, p1, v2}, Lcom/oppo/music/cahce/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Could not put file into cache %s"

    .line 213
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Could not clean up file %s"

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 227
    invoke-direct {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "DiskBasedCache"

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove, Could not delete cache entry for key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
