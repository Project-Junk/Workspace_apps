.class public Lcom/meicam/sdk/NvsPaintingEffectContext;
.super Ljava/lang/Object;
.source "NvsPaintingEffectContext.java"


# static fields
.field public static final STROKE_ANALOG_TYPE_COS:I = 0x3

.field public static final STROKE_ANALOG_TYPE_INVERT_COS:I = 0x4

.field public static final STROKE_ANALOG_TYPE_INVERT_SIN:I = 0x1

.field public static final STROKE_ANALOG_TYPE_POSITIVE_COS:I = 0x5

.field public static final STROKE_ANALOG_TYPE_POSITIVE_SIN:I = 0x2

.field public static final STROKE_ANALOG_TYPE_SIN:I = 0x0

.field public static final STROKE_CAP_STYLE_FLAT:I = 0x0

.field public static final STROKE_CAP_STYLE_ITALIC:I = 0x3

.field public static final STROKE_CAP_STYLE_ROUND:I = 0x2

.field public static final STROKE_CAP_STYLE_SQUARE:I = 0x1

.field public static final STROKE_FILL_MODE_GRADIENT:I = 0x0

.field public static final STROKE_FILL_MODE_TEXTURE:I = 0x1

.field public static final STROKE_JOINT_STYLE_BEVEL:I = 0x0

.field public static final STROKE_JOINT_STYLE_MITER:I = 0x1

.field public static final STROKE_JOINT_STYLE_ROUND:I = 0x2

.field public static final STROKE_TEXTURE_WARP_CLAMP:I = 0x0

.field public static final STROKE_TEXTURE_WARP_MIRRORED_REPEAT:I = 0x2

.field public static final STROKE_TEXTURE_WARP_REPEAT:I = 0x1


# instance fields
.field private m_contextInterface:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAddStroke(J[F)V
.end method

.method private native nativeAppendStroke(J[F)V
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeRemoveAllStroke(J)V
.end method

.method private native nativeRemoveLastStroke(J)V
.end method

.method private native nativeSetStrokeAnalogAmplitude(JF)V
.end method

.method private native nativeSetStrokeAnalogPeriod(JF)V
.end method

.method private native nativeSetStrokeAnalogType(JI)V
.end method

.method private native nativeSetStrokeAnimated(JZ)V
.end method

.method private native nativeSetStrokeAnimationSpeed(JF)V
.end method

.method private native nativeSetStrokeCapStyle(JI)V
.end method

.method private native nativeSetStrokeFillMode(JI)V
.end method

.method private native nativeSetStrokeGradient(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetStrokeJointStyle(JI)V
.end method

.method private native nativeSetStrokeTextureFilePath(JLjava/lang/String;)V
.end method

.method private native nativeSetStrokeTextureRepeatTimes(JII)V
.end method

.method private native nativeSetStrokeTextureWarpType(JI)V
.end method

.method private native nativeSetStrokeWidth(JF)V
.end method


# virtual methods
.method public AddStroke([F)V
    .locals 2

    .line 141
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 142
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeAddStroke(J[F)V

    return-void
.end method

.method public AppendStroke([F)V
    .locals 2

    .line 147
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 148
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeAppendStroke(J[F)V

    return-void
.end method

.method public RemoveAllStroke()V
    .locals 2

    .line 129
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 130
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeRemoveAllStroke(J)V

    return-void
.end method

.method public RemoveLastStroke()V
    .locals 2

    .line 135
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 136
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeRemoveLastStroke(J)V

    return-void
.end method

.method public SetStrokeAnalogAmplitude(F)V
    .locals 2

    .line 117
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 118
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnalogAmplitude(JF)V

    return-void
.end method

.method public SetStrokeAnalogPeriod(F)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 124
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnalogPeriod(JF)V

    return-void
.end method

.method public SetStrokeAnalogType(I)V
    .locals 2

    .line 111
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 112
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnalogType(JI)V

    return-void
.end method

.method public SetStrokeAnimated(Z)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 100
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnimated(JZ)V

    return-void
.end method

.method public SetStrokeAnimationSpeed(F)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 106
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnimationSpeed(JF)V

    return-void
.end method

.method public SetStrokeCapStyle(I)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 58
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeCapStyle(JI)V

    return-void
.end method

.method public SetStrokeFillMode(I)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 94
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeFillMode(JI)V

    return-void
.end method

.method public SetStrokeGradient(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 69
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 70
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeGradient(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public SetStrokeJointStyle(I)V
    .locals 2

    .line 63
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 64
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeJointStyle(JI)V

    return-void
.end method

.method public SetStrokeTextureFilePath(Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 76
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeTextureFilePath(JLjava/lang/String;)V

    return-void
.end method

.method public SetStrokeTextureRepeatTimes(II)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 88
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeTextureRepeatTimes(JII)V

    return-void
.end method

.method public SetStrokeTextureWarpType(I)V
    .locals 2

    .line 81
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 82
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeTextureWarpType(JI)V

    return-void
.end method

.method public SetStrokeWidth(F)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 52
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeWidth(JF)V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 158
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeCleanup(J)V

    .line 160
    iput-wide v2, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    .line 163
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected setContextInterface(J)V
    .locals 0

    .line 153
    iput-wide p1, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    return-void
.end method
