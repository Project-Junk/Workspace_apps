.class public Lcom/coloros/settings/feature/face/a/a;
.super Ljava/lang/Object;
.source "AnimGLActor.java"


# instance fields
.field protected a:I

.field protected b:[I

.field protected c:[I

.field protected d:[I

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/coloros/settings/feature/face/a/a;->a:I

    const/4 v0, 0x1

    .line 26
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coloros/settings/feature/face/a/a;->b:[I

    .line 27
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coloros/settings/feature/face/a/a;->c:[I

    .line 28
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->d:[I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/coloros/settings/feature/face/a/a;->e:I

    .line 30
    iput v0, p0, Lcom/coloros/settings/feature/face/a/a;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 33
    iget v0, p0, Lcom/coloros/settings/feature/face/a/a;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 35
    iput v1, p0, Lcom/coloros/settings/feature/face/a/a;->a:I

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->b:[I

    aget v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 38
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 39
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->b:[I

    aput v1, v0, v1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->c:[I

    aget v2, v0, v1

    if-eqz v2, :cond_2

    .line 42
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->c:[I

    aput v1, v0, v1

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->d:[I

    if-eqz v0, :cond_3

    .line 46
    array-length v2, v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    :cond_3
    return-void
.end method

.method public final b()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected final c()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->b:[I

    iget-object v1, p0, Lcom/coloros/settings/feature/face/a/a;->c:[I

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/face/a/c;->a([I[I)V

    return-void
.end method

.method protected final d()V
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->d:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/a;->d:[I

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 61
    sget-object v0, Lcom/coloros/settings/feature/face/a/c;->a:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    sget-object v3, Lcom/coloros/settings/feature/face/a/c;->b:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 63
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 64
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    sget-object v5, Lcom/coloros/settings/feature/face/a/c;->a:[F

    .line 65
    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    sget-object v5, Lcom/coloros/settings/feature/face/a/c;->b:[F

    sget-object v6, Lcom/coloros/settings/feature/face/a/c;->b:[F

    array-length v6, v6

    .line 66
    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const v4, 0x88e4

    .line 69
    invoke-static {v2, v0, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 70
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method
