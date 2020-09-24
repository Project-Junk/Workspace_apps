.class public final Landroid/hardware/radio/a/b/f;
.super Ljava/lang/Object;
.source "PhoneCapability.java"


# instance fields
.field public a:B

.field public b:B

.field public c:Z

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/a/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/a/b/f;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/HwParcel;)V
    .locals 13

    const-wide/16 v0, 0x18

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1108
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/radio/a/b/f;->a:B

    const-wide/16 v3, 0x1

    .line 1109
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/radio/a/b/f;->b:B

    const-wide/16 v3, 0x2

    .line 1110
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/radio/a/b/f;->c:Z

    const-wide/16 v3, 0x10

    .line 1112
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    mul-int/lit8 v4, v3, 0x1

    int-to-long v6, v4

    .line 1114
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    const/4 v12, 0x1

    move-object v5, p1

    .line 1113
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p1

    .line 1117
    iget-object v0, p0, Landroid/hardware/radio/a/b/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 1119
    new-instance v4, Landroid/hardware/radio/a/b/d;

    invoke-direct {v4}, Landroid/hardware/radio/a/b/d;-><init>()V

    mul-int/lit8 v5, v0, 0x1

    int-to-long v5, v5

    add-long/2addr v5, v1

    .line 2072
    invoke-virtual {p1, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    iput-byte v5, v4, Landroid/hardware/radio/a/b/d;->a:B

    .line 1121
    iget-object v5, p0, Landroid/hardware/radio/a/b/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/a/b/f;

    if-eq v2, v3, :cond_2

    return v1

    .line 39
    :cond_2
    check-cast p1, Landroid/hardware/radio/a/b/f;

    .line 40
    iget-byte v2, p0, Landroid/hardware/radio/a/b/f;->a:B

    iget-byte v3, p1, Landroid/hardware/radio/a/b/f;->a:B

    if-eq v2, v3, :cond_3

    return v1

    .line 43
    :cond_3
    iget-byte v2, p0, Landroid/hardware/radio/a/b/f;->b:B

    iget-byte v3, p1, Landroid/hardware/radio/a/b/f;->b:B

    if-eq v2, v3, :cond_4

    return v1

    .line 46
    :cond_4
    iget-boolean v2, p0, Landroid/hardware/radio/a/b/f;->c:Z

    iget-boolean v3, p1, Landroid/hardware/radio/a/b/f;->c:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 49
    :cond_5
    iget-object v2, p0, Landroid/hardware/radio/a/b/f;->d:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/a/b/f;->d:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/radio/a/b/f;->a:B

    .line 58
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/a/b/f;->b:B

    .line 59
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/a/b/f;->c:Z

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/a/b/f;->d:Ljava/util/ArrayList;

    .line 61
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".maxActiveData = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-byte v1, p0, Landroid/hardware/radio/a/b/f;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxActiveInternetData = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-byte v1, p0, Landroid/hardware/radio/a/b/f;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .isInternetLingeringSupported = "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-boolean v1, p0, Landroid/hardware/radio/a/b/f;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .logicalModemList = "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/a/b/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
