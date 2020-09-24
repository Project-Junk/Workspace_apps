.class public Lcom/coloros/anim/EffectiveAnimationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/EffectiveAnimationDrawable$ColorFilterData;,
        Lcom/coloros/anim/EffectiveAnimationDrawable$RepeatMode;,
        Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EffectiveAnimationDrawable"


# instance fields
.field private alpha:I

.field private final animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/anim/EffectiveAnimationDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/coloros/anim/EffectiveAnimationComposition;

.field private compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/coloros/anim/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lcom/coloros/anim/manager/FontAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/coloros/anim/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lcom/coloros/anim/manager/ImageAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isDirty:Z

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private scale:F

.field textDelegate:Lcom/coloros/anim/TextDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-direct {v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->colorFilterData:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 80
    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->scale:F

    const/16 v0, 0xff

    .line 92
    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->alpha:I

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->isDirty:Z

    .line 101
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$1;

    invoke-direct {v1, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable$1;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;)V

    invoke-virtual {v0, v1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/anim/EffectiveAnimationDrawable;)Lcom/coloros/anim/model/layer/CompositionLayer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/anim/EffectiveAnimationDrawable;)Lcom/coloros/anim/utils/EffectiveValueAnimator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    return-object p0
.end method

.method private buildCompositionLayer()V
    .locals 4

    .line 232
    new-instance v0, Lcom/coloros/anim/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 233
    invoke-static {v1}, Lcom/coloros/anim/parser/LayerParser;->parse(Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/coloros/anim/EffectiveAnimationComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coloros/anim/model/layer/CompositionLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;Ljava/util/List;Lcom/coloros/anim/EffectiveAnimationComposition;)V

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 972
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 977
    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 978
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private getFontAssetManager()Lcom/coloros/anim/manager/FontAssetManager;
    .locals 3

    .line 958
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/coloros/anim/manager/FontAssetManager;

    if-nez v0, :cond_1

    .line 964
    new-instance v0, Lcom/coloros/anim/manager/FontAssetManager;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->fontAssetDelegate:Lcom/coloros/anim/FontAssetDelegate;

    invoke-direct {v0, v1, v2}, Lcom/coloros/anim/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/coloros/anim/FontAssetDelegate;)V

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/coloros/anim/manager/FontAssetManager;

    .line 967
    :cond_1
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/coloros/anim/manager/FontAssetManager;

    return-object p0
.end method

.method private getImageAssetManager()Lcom/coloros/anim/manager/ImageAssetManager;
    .locals 5

    .line 931
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/coloros/anim/manager/ImageAssetManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/anim/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 937
    iput-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/coloros/anim/manager/ImageAssetManager;

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/coloros/anim/manager/ImageAssetManager;

    if-nez v0, :cond_2

    .line 941
    new-instance v0, Lcom/coloros/anim/manager/ImageAssetManager;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetDelegate:Lcom/coloros/anim/ImageAssetDelegate;

    iget-object v4, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 942
    invoke-virtual {v4}, Lcom/coloros/anim/EffectiveAnimationComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coloros/anim/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/coloros/anim/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/coloros/anim/manager/ImageAssetManager;

    .line 945
    :cond_2
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/coloros/anim/manager/ImageAssetManager;

    return-object p0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1019
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1020
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    .line 1021
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private updateBounds()V
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    return-void

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v0

    .line 782
    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 783
    invoke-virtual {v2}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    .line 782
    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/anim/model/KeyPath;",
            "TT;",
            "Lcom/coloros/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/coloros/anim/EffectiveAnimationDrawable$15;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 861
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/model/KeyPath;->getResolvedElement()Lcom/coloros/anim/model/KeyPathElement;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 862
    invoke-virtual {p1}, Lcom/coloros/anim/model/KeyPath;->getResolvedElement()Lcom/coloros/anim/model/KeyPathElement;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/coloros/anim/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    goto :goto_1

    .line 865
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 867
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 868
    sget-boolean v2, Lcom/coloros/anim/utils/ColorLog;->DEBUG_KEYPATH:Z

    if-eqz v2, :cond_2

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectiveAnimationDrawable::KeyPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/anim/utils/ColorLog;->d(Ljava/lang/String;)V

    .line 872
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/model/KeyPath;

    invoke-virtual {v2}, Lcom/coloros/anim/model/KeyPath;->getResolvedElement()Lcom/coloros/anim/model/KeyPathElement;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/coloros/anim/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_4

    .line 877
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 878
    sget-object p1, Lcom/coloros/anim/EffectiveAnimationProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    .line 882
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setProgress(F)V

    :cond_4
    return-void
.end method

.method public addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/SimpleValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/anim/model/KeyPath;",
            "TT;",
            "Lcom/coloros/anim/value/SimpleValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 894
    new-instance v0, Lcom/coloros/anim/EffectiveAnimationDrawable$16;

    invoke-direct {v0, p0, p3}, Lcom/coloros/anim/EffectiveAnimationDrawable$16;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/value/SimpleValueCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 788
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->cancel()V

    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 241
    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    .line 242
    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/coloros/anim/manager/ImageAssetManager;

    .line 243
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->clearComposition()V

    .line 244
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->isDirty:Z

    const-string v0, "Drawable#draw#start"

    .line 282
    invoke-static {v0}, Lcom/coloros/anim/L;->debug(Ljava/lang/String;)V

    const-string v0, "Drawable#draw"

    .line 283
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    if-nez v1, :cond_0

    return-void

    .line 288
    :cond_0
    iget v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->scale:F

    .line 290
    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v2

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    .line 293
    iget v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->scale:F

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v2, v1

    move v1, v4

    :goto_0
    const/4 v3, -0x1

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 308
    iget-object v4, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v4}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 309
    iget-object v6, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v6}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    mul-float v5, v4, v2

    mul-float v7, v6, v2

    .line 314
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v8

    mul-float/2addr v8, v4

    sub-float/2addr v8, v5

    .line 315
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v4

    mul-float/2addr v4, v6

    sub-float/2addr v4, v7

    .line 313
    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    invoke-virtual {p1, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 320
    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 321
    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    iget-object v2, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->alpha:I

    invoke-virtual {v1, p1, v2, p0}, Lcom/coloros/anim/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 322
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    move-result p0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawable#draw#end time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/anim/L;->debug(Ljava/lang/String;)V

    if-lez v3, :cond_3

    .line 326
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public enableBuildLayerDebug()V
    .locals 0

    .line 1063
    invoke-static {}, Lcom/coloros/anim/utils/ColorLog;->enableBuildLayerDebug()V

    return-void
.end method

.method public enableCompositionDebug()V
    .locals 0

    .line 1055
    invoke-static {}, Lcom/coloros/anim/utils/ColorLog;->enableCompositionDebug()V

    return-void
.end method

.method public enableDrawDebug()V
    .locals 0

    .line 1059
    invoke-static {}, Lcom/coloros/anim/utils/ColorLog;->enableDrawDebug()V

    return-void
.end method

.method public enableKeyPathDebug()V
    .locals 0

    .line 1051
    invoke-static {}, Lcom/coloros/anim/utils/ColorLog;->enableKeyPathDebug()V

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 141
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 142
    sget-object p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->TAG:Ljava/lang/String;

    const-string p1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_1
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    .line 146
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-eqz p1, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->buildCompositionLayer()V

    :cond_2
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    return p0
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->endAnimation()V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 261
    iget p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->alpha:I

    return p0
.end method

.method public getComposition()Lcom/coloros/anim/EffectiveAnimationComposition;
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public getFrame()I
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 923
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getImageAssetManager()Lcom/coloros/anim/manager/ImageAssetManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 925
    invoke-virtual {p0, p1}, Lcom/coloros/anim/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getMaxFrame()F
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getPerformanceTracker()Lcom/coloros/anim/PerformanceTracker;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getPerformanceTracker()Lcom/coloros/anim/PerformanceTracker;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProgress()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 798
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 687
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 753
    iget p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->scale:F

    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 591
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result p0

    return p0
.end method

.method public getTextDelegate()Lcom/coloros/anim/TextDelegate;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 739
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/coloros/anim/TextDelegate;

    return-object p0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 950
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getFontAssetManager()Lcom/coloros/anim/manager/FontAssetManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 952
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/manager/FontAssetManager;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasMasks()Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMasks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasMatte()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/CompositionLayer;->hasMatte()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 989
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 993
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->isDirty:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->isDirty:Z

    .line 253
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    .line 707
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isLooping()Z
    .locals 1

    .line 703
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getRepeatCount()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 346
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public loop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 656
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 793
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->pauseAnimation()V

    return-void
.end method

.method public playAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$2;

    invoke-direct {v1, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable$2;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->playAnimation()V

    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeAllListeners()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lcom/coloros/anim/model/KeyPath;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/KeyPath;",
            ">;"
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    const-string p0, "EffectiveAnimation"

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 834
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 837
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    new-instance v1, Lcom/coloros/anim/model/KeyPath;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/coloros/anim/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/coloros/anim/model/layer/CompositionLayer;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V

    return-object v0
.end method

.method public resolveLayers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1025
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    if-nez p0, :cond_0

    const-string p0, "EffectiveAnimation"

    const-string v0, "Cannot resolve layers. Composition is not set yet."

    .line 1026
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/CompositionLayer;->getLayers()Ljava/util/List;

    move-result-object p0

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1031
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1032
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/model/layer/BaseLayer;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public resumeAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$3;

    invoke-direct {v1, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable$3;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->resumeAnimation()V

    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 998
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1002
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 266
    iput p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "EffectiveAnimation"

    const-string p1, "Use addColorFilter instead."

    .line 271
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setComposition(Lcom/coloros/anim/EffectiveAnimationComposition;)Z
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 189
    :cond_0
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectiveAnimationDrawable::setComposition:composition = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    :cond_1
    const-string v0, "EffectiveAnimationDrawable::setComposition"

    .line 192
    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 193
    iput-boolean v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->isDirty:Z

    .line 194
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->clearComposition()V

    .line 195
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 196
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->buildCompositionLayer()V

    .line 197
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setComposition(Lcom/coloros/anim/EffectiveAnimationComposition;)V

    .line 198
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setProgress(F)V

    .line 199
    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->scale:F

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setScale(F)V

    .line 200
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->updateBounds()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;

    .line 207
    invoke-interface {v1, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$LazyCompositionTask;->run(Lcom/coloros/anim/EffectiveAnimationComposition;)V

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-boolean p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->performanceTrackingEnabled:Z

    invoke-virtual {p1, p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->setPerformanceTrackingEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDynamicLayerVisibility(Ljava/lang/String;Z)V
    .locals 3

    .line 1038
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1041
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/coloros/anim/model/layer/CompositionLayer;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/CompositionLayer;->getLayers()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 1042
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1043
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/model/layer/BaseLayer;

    .line 1044
    invoke-virtual {v1}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1045
    invoke-virtual {v1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->setVisible(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFontAssetDelegate(Lcom/coloros/anim/FontAssetDelegate;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->fontAssetDelegate:Lcom/coloros/anim/FontAssetDelegate;

    .line 732
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/coloros/anim/manager/FontAssetManager;

    if-eqz p0, :cond_0

    .line 733
    invoke-virtual {p0, p1}, Lcom/coloros/anim/manager/FontAssetManager;->setDelegate(Lcom/coloros/anim/FontAssetDelegate;)V

    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$13;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$13;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 648
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setFrame(I)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/coloros/anim/ImageAssetDelegate;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetDelegate:Lcom/coloros/anim/ImageAssetDelegate;

    .line 721
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/coloros/anim/manager/ImageAssetManager;

    if-eqz p0, :cond_0

    .line 722
    invoke-virtual {p0, p1}, Lcom/coloros/anim/manager/ImageAssetManager;->setDelegate(Lcom/coloros/anim/ImageAssetDelegate;)V

    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 172
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$7;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$7;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 465
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setMaxFrame(F)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$8;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$8;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 490
    :cond_0
    invoke-virtual {v0, p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/coloros/anim/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 494
    iget p1, v0, Lcom/coloros/anim/model/Marker;->startFrame:F

    iget v0, v0, Lcom/coloros/anim/model/Marker;->durationFrames:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    return-void

    .line 492
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 501
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$9;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$9;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 510
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/anim/EffectiveAnimationDrawable$11;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 552
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$10;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$10;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 529
    :cond_0
    invoke-virtual {v0, p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/coloros/anim/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    iget p1, v0, Lcom/coloros/anim/model/Marker;->startFrame:F

    float-to-int p1, p1

    .line 534
    iget v0, v0, Lcom/coloros/anim/model/Marker;->durationFrames:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    return-void

    .line 531
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 562
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/anim/EffectiveAnimationDrawable$12;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 572
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 573
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 572
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$4;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$4;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$5;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$5;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 429
    :cond_0
    invoke-virtual {v0, p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/coloros/anim/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    iget p1, v0, Lcom/coloros/anim/model/Marker;->startFrame:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    return-void

    .line 431
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinProgress(F)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$6;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$6;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 449
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->performanceTrackingEnabled:Z

    .line 219
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->setPerformanceTrackingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 802
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationDrawable$14;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable$14;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 811
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setFrame(I)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 769
    iput p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->scale:F

    .line 770
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->updateBounds()V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->animator:Lcom/coloros/anim/utils/EffectiveValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/utils/EffectiveValueAnimator;->setSpeed(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/coloros/anim/TextDelegate;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/coloros/anim/TextDelegate;

    return-void
.end method

.method public start()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->playAnimation()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->endAnimation()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1007
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1011
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 910
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getImageAssetManager()Lcom/coloros/anim/manager/ImageAssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "EffectiveAnimation"

    const-string p1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents EffectiveAnimation from getting a Context."

    .line 912
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 916
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/coloros/anim/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 917
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-object p1
.end method

.method public useTextGlyphs()Z
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/coloros/anim/TextDelegate;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationDrawable;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
