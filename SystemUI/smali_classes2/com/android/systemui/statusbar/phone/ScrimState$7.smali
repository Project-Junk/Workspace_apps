.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$7;
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

    .line 148
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindAlpha:F

    .line 152
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontAlpha:F

    const-wide/16 v0, 0x12c

    .line 153
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimationDuration:J

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mLaunchingAffordanceWithPreview:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimateChange:Z

    .line 156
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    .line 158
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 161
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    .line 162
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    .line 163
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    .line 166
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    :goto_0
    return-void
.end method
