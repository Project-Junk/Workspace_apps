.class public Lcom/meicam/sdk/NvsAREffectContext;
.super Ljava/lang/Object;
.source "NvsAREffectContext.java"


# instance fields
.field private m_contextInterface:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeSetChinWarpRatio(JF)V
.end method

.method private native nativeSetEyeDistanceWarpRatio(JF)V
.end method

.method private native nativeSetEyeEnlargeRatio(JF)V
.end method

.method private native nativeSetEyebrowWarpRatio(JF)V
.end method

.method private native nativeSetForeheadWarpRatio(JF)V
.end method

.method private native nativeSetHairlineWarpRatio(JF)V
.end method

.method private native nativeSetJawWarpRatio(JF)V
.end method

.method private native nativeSetMalarWarpRatio(JF)V
.end method

.method private native nativeSetMouthWidthWarpRatio(JF)V
.end method

.method private native nativeSetNoseLengthWarpRatio(JF)V
.end method

.method private native nativeSetNoseWidthWarpRatio(JF)V
.end method

.method private native nativeSetShrinkFaceRatio(JF)V
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 110
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeCleanup(J)V

    .line 112
    iput-wide v2, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    .line 115
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public setChinWarpRatio(F)V
    .locals 2

    .line 66
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 67
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetChinWarpRatio(JF)V

    return-void
.end method

.method protected setContextInterface(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    return-void
.end method

.method public setEyeDistanceWarpRatio(F)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 81
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetEyeDistanceWarpRatio(JF)V

    return-void
.end method

.method public setEyeEnlargeRatio(F)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 27
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetEyeEnlargeRatio(JF)V

    return-void
.end method

.method public setEyebrowWarpRatio(F)V
    .locals 2

    .line 73
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 74
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetEyebrowWarpRatio(JF)V

    return-void
.end method

.method public setForeheadWarpRatio(F)V
    .locals 2

    .line 38
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 39
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetForeheadWarpRatio(JF)V

    return-void
.end method

.method public setHairlineWarpRatio(F)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 46
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetHairlineWarpRatio(JF)V

    return-void
.end method

.method public setJawWarpRatio(F)V
    .locals 2

    .line 59
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 60
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetJawWarpRatio(JF)V

    return-void
.end method

.method public setMalarWarpRatio(F)V
    .locals 2

    .line 52
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 53
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetMalarWarpRatio(JF)V

    return-void
.end method

.method public setMouthWidthWarpRatio(F)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 100
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetMouthWidthWarpRatio(JF)V

    return-void
.end method

.method public setNoseLengthWarpRatio(F)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 87
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetNoseLengthWarpRatio(JF)V

    return-void
.end method

.method public setNoseWidthWarpRatio(F)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 94
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetNoseWidthWarpRatio(JF)V

    return-void
.end method

.method public setShrinkFaceRatio(F)V
    .locals 2

    .line 32
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 33
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAREffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAREffectContext;->nativeSetShrinkFaceRatio(JF)V

    return-void
.end method