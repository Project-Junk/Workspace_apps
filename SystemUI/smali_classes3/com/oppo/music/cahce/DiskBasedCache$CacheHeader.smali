.class public Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/cahce/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheHeader"
.end annotation


# instance fields
.field public etag:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oppo/music/cahce/Cache$Entry;)V
    .locals 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 368
    iget-object p1, p2, Lcom/oppo/music/cahce/Cache$Entry;->data:[B

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->size:J

    .line 369
    iget-object p1, p2, Lcom/oppo/music/cahce/Cache$Entry;->etag:Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 370
    iget-wide v0, p2, Lcom/oppo/music/cahce/Cache$Entry;->serverDate:J

    iput-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->serverDate:J

    .line 371
    iget-wide v0, p2, Lcom/oppo/music/cahce/Cache$Entry;->ttl:J

    iput-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->ttl:J

    .line 372
    iget-wide v0, p2, Lcom/oppo/music/cahce/Cache$Entry;->softTtl:J

    iput-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->softTtl:J

    .line 373
    iget-object p1, p2, Lcom/oppo/music/cahce/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;)Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    new-instance v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;

    invoke-direct {v0}, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;-><init>()V

    .line 383
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20120504

    if-ne v1, v2, :cond_1

    .line 388
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 389
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 390
    iget-object v1, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 391
    iput-object v1, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 393
    :cond_0
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->serverDate:J

    .line 394
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->ttl:J

    .line 395
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->softTtl:J

    .line 396
    invoke-static {p0}, Lcom/oppo/music/cahce/DiskBasedCache;->readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    return-object v0

    .line 386
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public toCacheEntry([B)Lcom/oppo/music/cahce/Cache$Entry;
    .locals 3

    .line 404
    new-instance v0, Lcom/oppo/music/cahce/Cache$Entry;

    invoke-direct {v0}, Lcom/oppo/music/cahce/Cache$Entry;-><init>()V

    .line 405
    iput-object p1, v0, Lcom/oppo/music/cahce/Cache$Entry;->data:[B

    .line 406
    iget-object p1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iput-object p1, v0, Lcom/oppo/music/cahce/Cache$Entry;->etag:Ljava/lang/String;

    .line 407
    iget-wide v1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->serverDate:J

    iput-wide v1, v0, Lcom/oppo/music/cahce/Cache$Entry;->serverDate:J

    .line 408
    iget-wide v1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->ttl:J

    iput-wide v1, v0, Lcom/oppo/music/cahce/Cache$Entry;->ttl:J

    .line 409
    iget-wide v1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->softTtl:J

    iput-wide v1, v0, Lcom/oppo/music/cahce/Cache$Entry;->softTtl:J

    .line 410
    iget-object p0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    iput-object p0, v0, Lcom/oppo/music/cahce/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public writeHeader(Ljava/io/OutputStream;)Z
    .locals 2

    const v0, 0x20120504

    .line 420
    :try_start_0
    invoke-static {p1, v0}, Lcom/oppo/music/cahce/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 421
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppo/music/cahce/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/oppo/music/cahce/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 423
    iget-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-static {p1, v0, v1}, Lcom/oppo/music/cahce/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 424
    iget-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->ttl:J

    invoke-static {p1, v0, v1}, Lcom/oppo/music/cahce/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 425
    iget-wide v0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {p1, v0, v1}, Lcom/oppo/music/cahce/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 426
    iget-object p0, p0, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/oppo/music/cahce/DiskBasedCache;->writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 427
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 430
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "%s"

    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
