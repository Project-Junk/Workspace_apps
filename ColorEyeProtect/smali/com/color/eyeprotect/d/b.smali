.class public final Lcom/color/eyeprotect/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/d/b$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/color/eyeprotect/d/b$a;


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:J

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/eyeprotect/d/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/eyeprotect/d/b$a;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/eyeprotect/d/b;->a:Lcom/color/eyeprotect/d/b$a;

    return-void
.end method

.method public constructor <init>(ZIIJZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/color/eyeprotect/d/b;->b:Z

    iput p2, p0, Lcom/color/eyeprotect/d/b;->c:I

    iput p3, p0, Lcom/color/eyeprotect/d/b;->d:I

    iput-wide p4, p0, Lcom/color/eyeprotect/d/b;->e:J

    iput-boolean p6, p0, Lcom/color/eyeprotect/d/b;->f:Z

    iput p7, p0, Lcom/color/eyeprotect/d/b;->g:I

    return-void
.end method

.method public synthetic constructor <init>(ZIIJZIILa/d/b/e;)V
    .locals 10

    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/color/eyeprotect/d/b;-><init>(ZIIJZI)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/d/b;->d:I

    return-void
.end method

.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/d/b;->b:Z

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/d/b;->c:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/d/b;->d:I

    return p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/color/eyeprotect/d/b;->e:J

    return-wide v0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/d/b;->f:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_7

    instance-of v1, p1, Lcom/color/eyeprotect/d/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Lcom/color/eyeprotect/d/b;

    iget-boolean v1, p0, Lcom/color/eyeprotect/d/b;->b:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/d/b;->b:Z

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_6

    iget v1, p0, Lcom/color/eyeprotect/d/b;->c:I

    iget v3, p1, Lcom/color/eyeprotect/d/b;->c:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_6

    iget v1, p0, Lcom/color/eyeprotect/d/b;->d:I

    iget v3, p1, Lcom/color/eyeprotect/d/b;->d:I

    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/color/eyeprotect/d/b;->e:J

    iget-wide v5, p1, Lcom/color/eyeprotect/d/b;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/color/eyeprotect/d/b;->f:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/d/b;->f:Z

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eqz v1, :cond_6

    iget p0, p0, Lcom/color/eyeprotect/d/b;->g:I

    iget p1, p1, Lcom/color/eyeprotect/d/b;->g:I

    if-ne p0, p1, :cond_5

    move p0, v0

    goto :goto_5

    :cond_5
    move p0, v2

    :goto_5
    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    return v2

    :cond_7
    :goto_6
    return v0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/d/b;->g:I

    return p0
.end method

.method public hashCode()I
    .locals 6

    iget-boolean v0, p0, Lcom/color/eyeprotect/d/b;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/color/eyeprotect/d/b;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/color/eyeprotect/d/b;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/color/eyeprotect/d/b;->e:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/eyeprotect/d/b;->f:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/color/eyeprotect/d/b;->g:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CCTEntity(mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/d/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/d/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEyeProtectCCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/d/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimationDuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/color/eyeprotect/d/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", byUserDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/d/b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/eyeprotect/d/b;->g:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
