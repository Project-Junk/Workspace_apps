.class public Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.super Landroid/view/View;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCutoutView"
.end annotation


# instance fields
.field private final mBoundingPath:Landroid/graphics/Path;

.field private final mBoundingRect:Landroid/graphics/Rect;

.field private final mBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I

.field private final mDecorations:Lcom/android/systemui/ScreenDecorations;

.field private final mInfo:Landroid/view/DisplayInfo;

.field private final mInitialStart:Z

.field private final mLocation:[I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRotation:I

.field private mStart:Z

.field private final mVisibilityChangedListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 883
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 868
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    .line 869
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    .line 870
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    .line 871
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 872
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    const/4 p1, 0x2

    .line 873
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/high16 p1, -0x1000000

    .line 877
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 884
    iput-boolean p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialStart:Z

    .line 885
    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mVisibilityChangedListener:Ljava/lang/Runnable;

    .line 886
    iput-object p4, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDecorations:Lcom/android/systemui/ScreenDecorations;

    const p1, 0x7f0a020f

    .line 887
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setId(I)V

    return-void
.end method

.method public static boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 1071
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1059
    :cond_1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1068
    :cond_2
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1062
    :cond_3
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private getGravity(Landroid/view/DisplayCutout;)I
    .locals 0

    .line 1081
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mStart:Z

    if-eqz p0, :cond_1

    .line 1082
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 1084
    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    if-lez p0, :cond_3

    const/16 p0, 0x30

    return p0

    .line 1088
    :cond_1
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x5

    return p0

    .line 1090
    :cond_2
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    if-lez p0, :cond_3

    const/16 p0, 0x50

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private hasCutout()Z
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1035
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mStart:Z

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    .line 1036
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    if-gtz p0, :cond_1

    .line 1037
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 1039
    :cond_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    if-gtz p0, :cond_4

    .line 1040
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    if-lez p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method private isStart()Z
    .locals 4

    .line 948
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 950
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialStart:Z

    if-nez p0, :cond_3

    move v1, v2

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialStart:Z

    :cond_3
    :goto_2
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialStart:Z

    if-eqz v1, :cond_0

    const-string v1, "OverlayTop"

    goto :goto_0

    :cond_0
    const-string v1, "OverlayBottom"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " drawn in rot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenDecorations"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private localBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1077
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    return-void
.end method

.method private static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    .line 1010
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p2

    .line 1011
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 1014
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 1006
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    int-to-float p1, p2

    .line 1007
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    .line 1002
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    .line 1003
    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 999
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void
.end method

.method private update()V
    .locals 2

    .line 954
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDecorations:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$300(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 957
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->isStart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mStart:Z

    .line 958
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->requestLayout()V

    .line 959
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 960
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 961
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 964
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 966
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->localBounds(Landroid/graphics/Rect;)V

    .line 967
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateGravity()V

    .line 968
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateBoundingPath()V

    .line 969
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->invalidate()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 974
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 975
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setVisibility(I)V

    .line 976
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mVisibilityChangedListener:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateBoundingPath()V
    .locals 5

    .line 981
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 982
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 984
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 989
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/view/DisplayCutout;->pathFromResources(Landroid/content/res/Resources;II)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 990
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 991
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v3, v2, v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 992
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {p0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private updateGravity()V
    .locals 3

    .line 1019
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1020
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 1021
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-direct {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    move-result v1

    .line 1023
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v2, v1, :cond_0

    .line 1024
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1025
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterceptRegion()Landroid/graphics/Region;
    .locals 8

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1108
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1109
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1110
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    .line 1109
    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;

    move-result-object v1

    .line 1113
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1114
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v2, 0x0

    aget v2, p0, v2

    neg-int v2, v2

    const/4 v3, 0x1

    aget p0, p0, v3

    neg-int p0, p0

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Region;->translate(II)V

    .line 1117
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1118
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v2, v1

    .line 1117
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 902
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 903
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 904
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 903
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 905
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 910
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 911
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 937
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 916
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 917
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getLocationOnScreen([I)V

    .line 918
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 919
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 921
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 923
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 1051
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->resolveSizeAndState(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 1052
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->resolveSizeAndState(III)I

    move-result p2

    .line 1050
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 896
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 897
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->invalidate()V

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 943
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    .line 944
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    return-void
.end method

.method public shouldInterceptTouch()Z
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method