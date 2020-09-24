.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final PANEL_BAR_SUPER_PARCELABLE:Ljava/lang/String; = "panel_bar_super_parcelable"

.field private static final SPEW:Z = false

.field private static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field public static final STATE_OPENING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PanelBar"


# instance fields
.field private mBouncerShowing:Z

.field private mExpanded:Z

.field mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field protected mPanelFraction:F

.field private mState:I

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 229
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    const/4 p1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews(Z)V

    const/4 p1, 0x0

    .line 233
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 234
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    .line 237
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_1
    return-void
.end method

.method public getExpansionFraction()F
    .locals 0

    .line 111
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    return p0
.end method

.method public go(I)V
    .locals 3

    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "go state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public isClosed()Z
    .locals 0

    .line 250
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    return p0
.end method

.method public onClosingFinished()V
    .locals 0

    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 0

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 0

    return-void
.end method

.method public onPanelPeeked()V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 73
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "panel_bar_super_parcelable"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "state"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    :cond_1
    return-void

    .line 74
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "panel_bar_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 130
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarEvent--onTouchEvent--panelEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--mPanel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "--event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    .line 131
    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_8

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-ne v0, v4, :cond_6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    .line 141
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 142
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    .line 143
    invoke-virtual {p0, v4, v3, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    :cond_5
    return v0

    .line 150
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_7

    .line 151
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    .line 151
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3

    .line 157
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v0, :cond_9

    .line 161
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "onTouch: no panel for touch at (%d,%d)"

    .line 161
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 165
    :cond_9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_a

    .line 170
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 170
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 176
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    move v3, v4

    :cond_c
    return v3
.end method

.method public onTrackingStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 266
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public panelEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 193
    sget-boolean v1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    if-eq v1, p2, :cond_0

    .line 194
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "panelExpansionChanged,mExpanded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",expanded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mTracking:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",thisFrac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notification"

    .line 194
    invoke-static {v3, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    .line 200
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 204
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p2, :cond_1

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 209
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    move p2, v1

    goto :goto_1

    :cond_3
    move p2, p1

    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 213
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p1, :cond_4

    const/4 p1, 0x2

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 216
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_5

    .line 217
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_5
    :goto_2
    return-void
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->setImportantForAccessibility(I)V

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 96
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    return-void
.end method
