.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$5;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha()F
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mWallpaperSupportsAmbientMode:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mHasBackdrop:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public isLowPowerState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mDisplayRequiresBlanking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mBlankScreen:Z

    if-eqz p1, :cond_0

    .line 107
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mAodFrontScrimAlpha:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentInFrontAlpha:F

    const/high16 p1, -0x1000000

    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentInFrontTint:I

    .line 109
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentBehindTint:I

    const-wide/16 v0, 0x3e8

    .line 110
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mAnimationDuration:J

    .line 113
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mAnimateChange:Z

    return-void
.end method
