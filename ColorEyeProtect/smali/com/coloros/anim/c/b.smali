.class public Lcom/coloros/anim/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/c/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:D

.field public final d:Lcom/coloros/anim/c/b$a;

.field public final e:I

.field public final f:D

.field public final g:D

.field public final h:I

.field public final i:I

.field public final j:D

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLcom/coloros/anim/c/b$a;IDDIIDZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/anim/c/b;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/coloros/anim/c/b;->c:D

    iput-object p5, p0, Lcom/coloros/anim/c/b;->d:Lcom/coloros/anim/c/b$a;

    iput p6, p0, Lcom/coloros/anim/c/b;->e:I

    iput-wide p7, p0, Lcom/coloros/anim/c/b;->f:D

    iput-wide p9, p0, Lcom/coloros/anim/c/b;->g:D

    iput p11, p0, Lcom/coloros/anim/c/b;->h:I

    iput p12, p0, Lcom/coloros/anim/c/b;->i:I

    iput-wide p13, p0, Lcom/coloros/anim/c/b;->j:D

    iput-boolean p15, p0, Lcom/coloros/anim/c/b;->k:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/coloros/anim/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/anim/c/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/coloros/anim/c/b;->c:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coloros/anim/c/b;->d:Lcom/coloros/anim/c/b$a;

    invoke-virtual {v1}, Lcom/coloros/anim/c/b$a;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coloros/anim/c/b;->e:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/coloros/anim/c/b;->f:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/coloros/anim/c/b;->h:I

    add-int/2addr v0, p0

    return v0
.end method
