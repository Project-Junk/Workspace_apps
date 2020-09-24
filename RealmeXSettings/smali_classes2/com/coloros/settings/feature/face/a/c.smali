.class public final Lcom/coloros/settings/feature/face/a/c;
.super Ljava/lang/Object;
.source "GLCommonUtils.java"


# static fields
.field public static final a:[F

.field public static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 25
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coloros/settings/feature/face/a/c;->a:[F

    .line 31
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coloros/settings/feature/face/a/c;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x505

    if-eq p0, v0, :cond_1

    const/16 v0, 0x506

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOW ERROR"

    return-object p0

    :pswitch_0
    const-string p0, "The specified operation is not allowed in the current state."

    return-object p0

    :pswitch_1
    const-string p0, "A numeric argument is out of range."

    return-object p0

    :pswitch_2
    const-string p0, "An unacceptable value is specified for an enumerated argument."

    return-object p0

    :cond_0
    const-string p0, "The command is trying to render to or read from the framebuffer while the currently bound framebuffer is not framebuffer complete (i.e. the return value from glCheckFramebufferStatus is not GL_FRAMEBUFFER_COMPLETE)."

    return-object p0

    :cond_1
    const-string p0, "There is not enough memory left to execute the command. The state of the GL is undefined, except for the state of the error flags, after this error is recorded."

    return-object p0

    :cond_2
    const-string p0, "No error has been recorded."

    return-object p0

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " glError: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/a/c;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GLCommonUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a([FJ)V
    .locals 6

    const/4 v0, 0x4

    if-nez p0, :cond_0

    .line 59
    new-array p0, v0, [F

    .line 61
    :cond_0
    array-length v1, p0

    if-ne v1, v0, :cond_1

    const-wide/32 v0, 0xff0000

    and-long/2addr v0, p1

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    .line 64
    aput v0, p0, v2

    const/4 v0, 0x1

    const-wide/32 v3, 0xff00

    and-long/2addr v3, p1

    const/16 v5, 0x8

    shr-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    .line 65
    aput v3, p0, v0

    const/4 v0, 0x2

    const-wide/16 v3, 0xff

    and-long/2addr v3, p1

    shr-long v2, v3, v2

    long-to-float v2, v2

    div-float/2addr v2, v1

    .line 66
    aput v2, p0, v0

    const/4 v0, 0x3

    const-wide/32 v2, -0x1000000

    and-long/2addr p1, v2

    const/16 v2, 0x18

    shr-long/2addr p1, v2

    long-to-float p1, p1

    div-float/2addr p1, v1

    .line 67
    aput p1, p0, v0

    return-void

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "calculateHexToGLColor glRGBAColors length should be 4"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([I[I)V
    .locals 12

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 81
    new-array p0, v0, [I

    .line 83
    :cond_0
    array-length v1, p0

    if-ne v1, v0, :cond_3

    if-nez p1, :cond_1

    .line 87
    new-array p1, v0, [I

    .line 89
    :cond_1
    array-length v1, p1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 93
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 95
    aget v0, p1, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x168

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    .line 97
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 99
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 101
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v3, 0x2601

    .line 103
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 105
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 107
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 109
    aget p0, p0, v1

    const v0, 0x8d40

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p0, 0x8ce0

    .line 110
    aget p1, p1, v1

    invoke-static {v0, p0, v2, p1, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 p0, 0x0

    .line 112
    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p0, 0x4500

    .line 113
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 114
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string p0, "initFBO"

    .line 115
    invoke-static {p0}, Lcom/coloros/settings/feature/face/a/c;->a(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "initSimpleFBO texID length should be 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "initSimpleFBO fboID length should be 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
