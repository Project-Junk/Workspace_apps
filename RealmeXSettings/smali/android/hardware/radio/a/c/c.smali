.class public final Landroid/hardware/radio/a/c/c;
.super Ljava/lang/Object;
.source "SimSlotStatus.java"


# instance fields
.field public a:Landroid/hardware/radio/a/a/d;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/a/a/d;

    invoke-direct {v0}, Landroid/hardware/radio/a/a/d;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/a/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/a/c/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 61
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x10

    .line 62
    invoke-virtual {v8, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x8

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v1, v10, 0x40

    int-to-long v1, v1

    .line 67
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    .line 66
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v11

    .line 70
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v10, :cond_0

    .line 72
    new-instance v13, Landroid/hardware/radio/a/c/c;

    invoke-direct {v13}, Landroid/hardware/radio/a/c/c;-><init>()V

    mul-int/lit8 v0, v12, 0x40

    int-to-long v0, v0

    .line 1083
    iget-object v2, v13, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    const-wide/16 v3, 0x0

    add-long v5, v0, v3

    invoke-virtual {v2, v8, v11, v5, v6}, Landroid/hardware/radio/a/a/d;->a(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x30

    add-long/2addr v0, v5

    .line 1084
    invoke-virtual {v11, v0, v1}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroid/hardware/radio/a/c/c;->b:Ljava/lang/String;

    .line 1086
    iget-object v2, v13, Landroid/hardware/radio/a/c/c;->b:Ljava/lang/String;

    .line 1087
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v5, v2

    .line 1088
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v16, v0, v3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v14

    move-wide/from16 v5, v16

    .line 1086
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 74
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    return-object v9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/a/c/c;

    if-eq v2, v3, :cond_2

    return v1

    .line 26
    :cond_2
    check-cast p1, Landroid/hardware/radio/a/c/c;

    .line 27
    iget-object v2, p0, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    iget-object v3, p1, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 30
    :cond_3
    iget-object v2, p0, Landroid/hardware/radio/a/c/c;->b:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/radio/a/c/c;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    .line 39
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/a/c/c;->b:Ljava/lang/String;

    .line 40
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".base = "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Landroid/hardware/radio/a/c/c;->a:Landroid/hardware/radio/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .eid = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Landroid/hardware/radio/a/c/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
