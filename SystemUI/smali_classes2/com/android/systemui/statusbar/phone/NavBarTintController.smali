.class public Lcom/android/systemui/statusbar/phone/NavBarTintController;
.super Ljava/lang/Object;
.source "NavBarTintController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final DEFAULT_COLOR_ADAPT_TRANSITION_TIME:I = 0x6a4

.field public static final MIN_COLOR_ADAPT_TRANSITION_TIME:I = 0x190


# instance fields
.field private mCurrentMedianLuma:F

.field private final mHandler:Landroid/os/Handler;

.field private mLastMedianLuma:F

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private final mLuminanceChangeThreshold:F

.field private final mLuminanceThreshold:F

.field private final mNavBarHeight:I

.field private mNavBarMode:I

.field private final mNavColorSampleMargin:I

.field private final mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private final mSamplingBounds:Landroid/graphics/Rect;

.field private mSamplingEnabled:Z

.field private mSamplingListener:Landroid/view/CompositionSamplingListener;

.field private mSamplingListenerRegistered:Z

.field private mUpdateOnNextDraw:Z

.field private final mUpdateSamplingListener:Ljava/lang/Runnable;

.field private mWindowVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarMode:I

    .line 54
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarTintController$2EUeUMrCltge35I4yojwTXFosWM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavBarTintController$2EUeUMrCltge35I4yojwTXFosWM;-><init>(Lcom/android/systemui/statusbar/phone/NavBarTintController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateSamplingListener:Ljava/lang/Runnable;

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingEnabled:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 87
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07059b

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarHeight:I

    const p2, 0x7f0705a9

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavColorSampleMargin:I

    const p2, 0x7f0705af

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLuminanceThreshold:F

    const p2, 0x7f0705ae

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLuminanceChangeThreshold:F

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;I)Z
    .locals 0

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    if-nez p0, :cond_0

    .line 217
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$2EUeUMrCltge35I4yojwTXFosWM(Lcom/android/systemui/statusbar/phone/NavBarTintController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->updateSamplingListener()V

    return-void
.end method

.method private requestUpdateSamplingListener()V
    .locals 0

    return-void
.end method

.method private updateSamplingListener()V
    .locals 3

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    invoke-static {v0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mWindowVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 162
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 166
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateOnNextDraw:Z

    return-void

    .line 169
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 171
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 170
    invoke-static {v0, v1, v2, p0}, Landroid/view/CompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/os/IBinder;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private updateTint(F)V
    .locals 3

    .line 177
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLastMedianLuma:F

    .line 181
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mCurrentMedianLuma:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLastMedianLuma:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLuminanceChangeThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 182
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLuminanceThreshold:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 189
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mCurrentMedianLuma:F

    :cond_1
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "NavBarTintController:"

    .line 203
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  navBar isAttached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  navBar isScValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 206
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSamplingListenerRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSamplingBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastMedianLuma: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mLastMedianLuma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMedianLuma: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mCurrentMedianLuma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWindowVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mWindowVisible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onDraw()V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateOnNextDraw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mUpdateOnNextDraw:Z

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 132
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 134
    new-array p2, p2, [I

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 136
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 138
    new-instance p4, Landroid/graphics/Rect;

    const/4 p5, 0x0

    aget p6, p2, p5

    iget p7, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavColorSampleMargin:I

    sub-int/2addr p6, p7

    iget p7, p3, Landroid/graphics/Point;->y:I

    iget p8, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarHeight:I

    sub-int/2addr p7, p8

    aget p2, p2, p5

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavColorSampleMargin:I

    add-int/2addr p2, p1

    iget p1, p3, Landroid/graphics/Point;->y:I

    invoke-direct {p4, p6, p7, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    :cond_0
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarMode:I

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method

.method public setWindowVisible(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mWindowVisible:Z

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method

.method start()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mNavBarMode:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingEnabled:Z

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarTintController;->mSamplingEnabled:Z

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->requestUpdateSamplingListener()V

    return-void
.end method
