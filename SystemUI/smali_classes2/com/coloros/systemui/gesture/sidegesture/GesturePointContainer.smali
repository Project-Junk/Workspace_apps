.class public Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;
.super Ljava/lang/Object;
.source "GesturePointContainer.java"


# instance fields
.field private mPoint:Landroid/graphics/PointF;

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSide:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;IIIII)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mPoint:Landroid/graphics/PointF;

    .line 28
    iput p2, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mState:I

    .line 29
    iput p3, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mSide:I

    .line 30
    iput p4, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mRotation:I

    .line 31
    iput p5, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mScreenHeight:I

    .line 32
    iput p6, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/PointF;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getRotation()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mRotation:I

    return p0
.end method

.method public getScreenHeight()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mScreenHeight:I

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mScreenWidth:I

    return p0
.end method

.method public getSide()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mSide:I

    return p0
.end method

.method public getState()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->mState:I

    return p0
.end method
