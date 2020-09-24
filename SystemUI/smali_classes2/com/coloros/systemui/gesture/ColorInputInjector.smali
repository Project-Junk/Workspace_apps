.class public Lcom/coloros/systemui/gesture/ColorInputInjector;
.super Ljava/lang/Object;
.source "ColorInputInjector.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorInputInjector"

.field private static final sColorInputInjectorSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/coloros/systemui/gesture/ColorInputInjector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mScreenHeight:I

.field private mScreenRegion:Landroid/graphics/RectF;

.field private mScreenWidth:I

.field private mShouldInject:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/coloros/systemui/gesture/ColorInputInjector$1;

    invoke-direct {v0}, Lcom/coloros/systemui/gesture/ColorInputInjector$1;-><init>()V

    sput-object v0, Lcom/coloros/systemui/gesture/ColorInputInjector;->sColorInputInjectorSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenRegion:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mShouldInject:Z

    return-void
.end method

.method private checkDownEventInScreen(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenRegion:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDownEventInScreen mScreenRegion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenRegion:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "contains:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenRegion:Landroid/graphics/RectF;

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " event:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string v0, "ColorInputInjector"

    .line 154
    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance()Lcom/coloros/systemui/gesture/ColorInputInjector;
    .locals 1

    .line 34
    sget-object v0, Lcom/coloros/systemui/gesture/ColorInputInjector;->sColorInputInjectorSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/gesture/ColorInputInjector;

    return-object v0
.end method

.method private resetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 23

    move-object/from16 v0, p1

    .line 117
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->getScale()F

    move-result v1

    .line 119
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->getOffsetX()I

    move-result v2

    .line 120
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->getOffsetY()I

    move-result v3

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 125
    new-array v10, v9, [Landroid/view/MotionEvent$PointerProperties;

    .line 126
    new-array v11, v9, [Landroid/view/MotionEvent$PointerCoords;

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    const/16 v20, 0x0

    move/from16 p0, v15

    move/from16 v15, v20

    :goto_0
    if-ge v15, v9, :cond_0

    .line 136
    new-instance v20, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v20, v10, v15

    .line 137
    new-instance v20, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v20, v11, v15

    move/from16 v20, v14

    .line 138
    aget-object v14, v10, v15

    invoke-virtual {v0, v15, v14}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 139
    aget-object v14, v11, v15

    invoke-virtual {v0, v15, v14}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 140
    aget-object v14, v11, v15

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    mul-float v21, v21, v1

    move/from16 v22, v13

    int-to-float v13, v2

    add-float v13, v21, v13

    iput v13, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 141
    aget-object v13, v11, v15

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    mul-float/2addr v14, v1

    int-to-float v0, v3

    add-float/2addr v14, v0

    iput v14, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v14, v20

    move/from16 v13, v22

    goto :goto_0

    :cond_0
    move/from16 v22, v13

    move/from16 v20, v14

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "offsetEvent scale:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "ColorInputInjector"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v13, v22

    move/from16 v15, p0

    .line 145
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p1
.end method

.method private sendEvent(II)V
    .locals 13

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 86
    new-instance p0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, p0

    move-wide v1, v3

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 91
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public injectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectAllEvent down: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " up: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorInputInjector"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectMotionEvent(Landroid/view/MotionEvent;)V

    .line 64
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 65
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 69
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectMotionEvent(Landroid/view/MotionEvent;)V

    :cond_2
    return-void
.end method

.method public injectKeyEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->sendEvent(II)V

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->sendEvent(II)V

    return-void
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->checkDownEventInScreen(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mShouldInject:Z

    .line 42
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mShouldInject:Z

    const-string v1, "ColorInputInjector"

    const-string v2, "Common"

    if-nez v0, :cond_1

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sourceEvent:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->resetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Landroid/view/MotionEvent;->setDownTime(J)V

    const/4 p1, 0x0

    .line 50
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectMotionEvent error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectMotionEvent result "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "event = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V

    return-void
.end method

.method public notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyInjectEvent down: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " up: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorInputInjector"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectMotionEvent(Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public notifyKeyEvent(I)V
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyEvent key: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorInputInjector"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectKeyEvent(I)V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 1

    .line 79
    iput p1, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenWidth:I

    .line 80
    iput p2, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenHeight:I

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenRegion:Landroid/graphics/RectF;

    iget p2, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenWidth:I

    int-to-float p2, p2

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorInputInjector;->mScreenHeight:I

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
