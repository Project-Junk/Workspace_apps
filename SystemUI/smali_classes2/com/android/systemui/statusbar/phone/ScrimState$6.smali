.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$6;
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

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha()F
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mWakeLockScreenSensorActive:Z

    if-eqz p0, :cond_0

    const p0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p0

    :goto_0
    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    const/4 p1, 0x0

    .line 133
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mCurrentInFrontAlpha:F

    const/high16 p1, -0x1000000

    .line 134
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mCurrentBehindTint:I

    .line 135
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mDisplayRequiresBlanking:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$6;->mBlankScreen:Z

    return-void
.end method
