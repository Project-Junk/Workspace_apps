.class public Lco/polarr/renderer/filters/g;
.super Lco/polarr/renderer/filters/a/a;


# static fields
.field private static h:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lco/polarr/renderer/filters/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[F

.field public b:[F

.field public c:[F

.field public d:F

.field public e:F

.field public f:F

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lco/polarr/renderer/filters/g;->h:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lco/polarr/renderer/filters/a/a;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lco/polarr/renderer/filters/g;->d:F

    const/4 p2, 0x0

    iput p2, p0, Lco/polarr/renderer/filters/g;->e:F

    iput p1, p0, Lco/polarr/renderer/filters/g;->f:F

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/g;
    .locals 2

    sget-object v0, Lco/polarr/renderer/filters/g;->h:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/filters/g;

    if-nez v0, :cond_0

    new-instance v0, Lco/polarr/renderer/filters/g;

    invoke-direct {v0, p0, p1}, Lco/polarr/renderer/filters/g;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/g;->k()V

    sget-object p0, Lco/polarr/renderer/filters/g;->h:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, v0, Lco/polarr/renderer/filters/g;->u:Lco/polarr/renderer/entities/Context;

    return-object v0
.end method

.method public static h_()V
    .locals 1

    sget-object v0, Lco/polarr/renderer/filters/g;->h:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 0

    return-void
.end method

.method protected b_()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/polarr/renderer/filters/g;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    iget-object v2, p0, Lco/polarr/renderer/filters/g;->E:Landroid/content/res/Resources;

    const-string v3, "vertex"

    invoke-static {v3}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/polarr/renderer/b/p;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/polarr/renderer/filters/g;->u:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->shaderUtil:Lco/polarr/renderer/b/p;

    iget-object v2, p0, Lco/polarr/renderer/filters/g;->E:Landroid/content/res/Resources;

    const-string v3, "brush_cursor"

    invoke-static {v3}, Lco/polarr/renderer/b/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/polarr/renderer/b/p;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/g;->x:I

    iget v0, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v1, "a_Vertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/g;->y:I

    iget v0, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v1, "a_TexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/g;->z:I

    iget v0, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v1, "a_Distortion"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/g;->A:I

    iget v0, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v1, "a_Delta"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/g;->B:I

    iget v0, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v1, "u_ModelViewProjectionMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/g;->C:I

    iget v0, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v1, "texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/polarr/renderer/filters/g;->D:I

    return-void
.end method

.method protected d()V
    .locals 12

    iget-object v0, p0, Lco/polarr/renderer/filters/g;->a:[F

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lco/polarr/renderer/filters/g;->a:[F

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lco/polarr/renderer/filters/g;->a:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lco/polarr/renderer/filters/g;->G:[F

    iget-object v1, p0, Lco/polarr/renderer/filters/g;->u:Lco/polarr/renderer/entities/Context;

    iget-object v5, v1, Lco/polarr/renderer/entities/Context;->overlayMatrix:[F

    iget-object v1, p0, Lco/polarr/renderer/filters/g;->c:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    aget v7, v1, v10

    const/4 v11, 0x1

    aget v8, v1, v11

    aget v9, v1, v2

    invoke-static/range {v3 .. v9}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v1, p0, Lco/polarr/renderer/filters/g;->G:[F

    iget-object v3, p0, Lco/polarr/renderer/filters/g;->b:[F

    aget v4, v3, v10

    aget v5, v3, v11

    aget v2, v3, v2

    invoke-static {v1, v10, v4, v5, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget v1, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v2, "pressure"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v1, "hardness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lco/polarr/renderer/filters/g;->e:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lco/polarr/renderer/filters/g;->x:I

    const-string v1, "flow"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lco/polarr/renderer/filters/g;->f:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-super {p0}, Lco/polarr/renderer/filters/a/a;->d()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public draw()V
    .locals 0

    invoke-virtual {p0}, Lco/polarr/renderer/filters/g;->n()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/g;->d()V

    invoke-virtual {p0}, Lco/polarr/renderer/filters/g;->e()V

    return-void
.end method

.method protected e()V
    .locals 7

    iget v0, p0, Lco/polarr/renderer/filters/g;->y:I

    if-ltz v0, :cond_0

    iget v0, p0, Lco/polarr/renderer/filters/g;->y:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lco/polarr/renderer/filters/g;->y:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mVerBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_0
    iget v0, p0, Lco/polarr/renderer/filters/g;->z:I

    if-ltz v0, :cond_1

    iget v0, p0, Lco/polarr/renderer/filters/g;->z:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lco/polarr/renderer/filters/g;->z:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_1
    iget v0, p0, Lco/polarr/renderer/filters/g;->A:I

    if-ltz v0, :cond_2

    iget v0, p0, Lco/polarr/renderer/filters/g;->A:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lco/polarr/renderer/filters/g;->A:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mDistortionBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_2
    iget v0, p0, Lco/polarr/renderer/filters/g;->B:I

    if-ltz v0, :cond_3

    iget v0, p0, Lco/polarr/renderer/filters/g;->B:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lco/polarr/renderer/filters/g;->B:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mDeltaBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_3
    const/4 v0, 0x4

    sget-object v1, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v1, v1, Lco/polarr/renderer/entities/Mesh;->trianglesBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1403

    sget-object v3, Lco/polarr/renderer/entities/Context;->overlayMesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v3, v3, Lco/polarr/renderer/entities/Mesh;->trianglesBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    iget v0, p0, Lco/polarr/renderer/filters/g;->y:I

    if-ltz v0, :cond_4

    iget v0, p0, Lco/polarr/renderer/filters/g;->y:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_4
    iget v0, p0, Lco/polarr/renderer/filters/g;->z:I

    if-ltz v0, :cond_5

    iget v0, p0, Lco/polarr/renderer/filters/g;->z:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_5
    iget v0, p0, Lco/polarr/renderer/filters/g;->A:I

    if-ltz v0, :cond_6

    iget v0, p0, Lco/polarr/renderer/filters/g;->A:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_6
    iget v0, p0, Lco/polarr/renderer/filters/g;->B:I

    if-ltz v0, :cond_7

    iget v0, p0, Lco/polarr/renderer/filters/g;->B:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_7
    return-void
.end method
