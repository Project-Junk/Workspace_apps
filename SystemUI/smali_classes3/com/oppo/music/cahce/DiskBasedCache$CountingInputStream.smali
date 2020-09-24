.class public Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/cahce/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingInputStream"
.end annotation


# instance fields
.field public bytesRead:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 438
    iput p1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->bytesRead:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 448
    iget v1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->bytesRead:I

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 457
    iget p2, p0, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->bytesRead:I

    :cond_0
    return p1
.end method
