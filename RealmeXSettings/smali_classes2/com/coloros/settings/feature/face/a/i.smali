.class public final Lcom/coloros/settings/feature/face/a/i;
.super Lcom/coloros/settings/feature/face/a/a;
.source "TimeAnimGLActor.java"


# instance fields
.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/a/a;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/coloros/settings/feature/face/a/i;->g:I

    .line 50
    iput v0, p0, Lcom/coloros/settings/feature/face/a/i;->h:I

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 18

    move-object/from16 v0, p0

    .line 73
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/i;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x1

    const/16 v4, 0x168

    .line 74
    invoke-static {v2, v2, v4, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v4, 0xbe2

    .line 75
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 76
    invoke-static {v1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 77
    iget v1, v0, Lcom/coloros/settings/feature/face/a/i;->a:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 78
    iget v1, v0, Lcom/coloros/settings/feature/face/a/i;->g:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    move/from16 v5, p1

    .line 79
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 81
    :cond_0
    iget v1, v0, Lcom/coloros/settings/feature/face/a/i;->h:I

    move/from16 v5, p2

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 82
    iget v1, v0, Lcom/coloros/settings/feature/face/a/i;->e:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 83
    iget v1, v0, Lcom/coloros/settings/feature/face/a/i;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 85
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/i;->d:[I

    aget v1, v1, v2

    const v5, 0x8892

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 86
    iget v6, v0, Lcom/coloros/settings/feature/face/a/i;->e:I

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 87
    iget v12, v0, Lcom/coloros/settings/feature/face/a/i;->f:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v1, Lcom/coloros/settings/feature/face/a/c;->a:[F

    array-length v1, v1

    const/4 v6, 0x4

    mul-int/lit8 v17, v1, 0x4

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v1, 0x5

    .line 89
    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 91
    iget v1, v0, Lcom/coloros/settings/feature/face/a/i;->e:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 92
    iget v1, v0, Lcom/coloros/settings/feature/face/a/i;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 93
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 95
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 96
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nvarying vec2 textureCoordinate; \n\nvoid main() { \n    gl_Position = position; \n    textureCoordinate = inputTextureCoordinate.xy; \n}\n"

    const-string v1, "precision highp float; \nuniform int uIndexOfAngle; \nuniform float uParticleDeltaProgress;\n\nvarying vec2 textureCoordinate; \n\nconst float ZERO_F = 0.0;\nconst float ANGLE = 360.0; \n\nvoid main() { \n\n    float progress = float(uIndexOfAngle)/ANGLE ;\n    if (textureCoordinate.x <= progress) {\n        gl_FragColor = vec4(uParticleDeltaProgress); \n    } else {\n        gl_FragColor = vec4(ZERO_F); \n    }\n}\n"

    .line 53
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/face/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/i;->a:I

    .line 54
    iget v0, p0, Lcom/coloros/settings/feature/face/a/i;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 55
    iget v0, p0, Lcom/coloros/settings/feature/face/a/i;->a:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/i;->e:I

    .line 56
    iget v0, p0, Lcom/coloros/settings/feature/face/a/i;->a:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/i;->f:I

    .line 57
    iget v0, p0, Lcom/coloros/settings/feature/face/a/i;->a:I

    const-string v1, "uIndexOfAngle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/i;->g:I

    .line 58
    iget v0, p0, Lcom/coloros/settings/feature/face/a/i;->a:I

    const-string v1, "uParticleDeltaProgress"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/i;->h:I

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/a/i;->c()V

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/a/i;->d()V

    const-string v0, "TimeAnimGLActor initShader"

    .line 63
    invoke-static {v0}, Lcom/coloros/settings/feature/face/a/c;->a(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initShader mProgram="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/face/a/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPositionHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/face/a/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTexcoorHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/face/a/i;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIndexOfAngleHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/face/a/i;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mDeltaPrgressHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/face/a/i;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeAnimGLActor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final f()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/i;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/i;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/a/i;->b:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x168

    const/4 v3, 0x1

    .line 104
    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4500

    .line 105
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 106
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_1
    :goto_0
    return-void
.end method
