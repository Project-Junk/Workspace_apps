.class public final Lcom/color/darkmode/entity/Duration;
.super Ljava/lang/Object;


# instance fields
.field private mHourBegin:I

.field private mHourEnd:I

.field private mMinBegin:I

.field private mMinEnd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    iput v0, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    iput v0, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    iput v0, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    return-void
.end method


# virtual methods
.method public final getBeginTimeString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    const/16 v2, 0x30

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEndTimeString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    const/16 v2, 0x30

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMHourBegin()I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    return p0
.end method

.method public final getMHourEnd()I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    return p0
.end method

.method public final getMMinBegin()I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    return p0
.end method

.method public final getMMinEnd()I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    return p0
.end method

.method public final isInDuration(II)Z
    .locals 3

    invoke-virtual {p0}, Lcom/color/darkmode/entity/Duration;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    mul-int/lit8 v0, v0, 0x3c

    iget v2, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    mul-int/lit8 v2, v2, 0x3c

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    add-int/2addr v2, p0

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    const/4 p0, 0x1

    if-le v2, v0, :cond_1

    if-lt p1, v0, :cond_3

    if-ge p1, v2, :cond_3

    return p0

    :cond_1
    if-ge v2, v0, :cond_3

    if-lt p1, v2, :cond_2

    if-lt p1, v0, :cond_3

    :cond_2
    return p0

    :cond_3
    return v1
.end method

.method public final isValid()Z
    .locals 2

    iget v0, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setDuration(IIII)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    iput p2, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    iput p3, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    iput p4, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    return-void
.end method

.method public final setMHourBegin(I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    return-void
.end method

.method public final setMHourEnd(I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    return-void
.end method

.method public final setMMinBegin(I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    return-void
.end method

.method public final setMMinEnd(I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mHourBegin:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mMinBegin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/darkmode/entity/Duration;->mHourEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/darkmode/entity/Duration;->mMinEnd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
