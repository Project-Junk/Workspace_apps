.class public Lcom/coloros/anim/EffectiveAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "EffectiveAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/EffectiveAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectiveAnimationView"


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private autoPlay:Z

.field private composition:Lcom/coloros/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositionTask:Lcom/coloros/anim/EffectiveAnimationTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field private final failureListener:Lcom/coloros/anim/EffectiveAnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedListener:Lcom/coloros/anim/EffectiveAnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/EffectiveAnimationListener<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field

.field private onCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/anim/OnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private renderMode:Lcom/coloros/anim/RenderMode;

.field private wasAnimatingWhenDetached:Z

.field private wasAnimatingWhenVisibilityChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->failureListener:Lcom/coloros/anim/EffectiveAnimationListener;

    .line 66
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-direct {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 71
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 72
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->autoPlay:Z

    .line 73
    sget-object p1, Lcom/coloros/anim/RenderMode;->AUTOMATIC:Lcom/coloros/anim/RenderMode;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->renderMode:Lcom/coloros/anim/RenderMode;

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    .line 82
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->loadedListener:Lcom/coloros/anim/EffectiveAnimationListener;

    const/4 p1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->failureListener:Lcom/coloros/anim/EffectiveAnimationListener;

    .line 66
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-direct {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 71
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 72
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->autoPlay:Z

    .line 73
    sget-object p1, Lcom/coloros/anim/RenderMode;->AUTOMATIC:Lcom/coloros/anim/RenderMode;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->renderMode:Lcom/coloros/anim/RenderMode;

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    .line 82
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->loadedListener:Lcom/coloros/anim/EffectiveAnimationListener;

    .line 96
    invoke-direct {p0, p2}, Lcom/coloros/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->failureListener:Lcom/coloros/anim/EffectiveAnimationListener;

    .line 66
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-direct {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 71
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 72
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->autoPlay:Z

    .line 73
    sget-object p1, Lcom/coloros/anim/RenderMode;->AUTOMATIC:Lcom/coloros/anim/RenderMode;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->renderMode:Lcom/coloros/anim/RenderMode;

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    .line 82
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->loadedListener:Lcom/coloros/anim/EffectiveAnimationListener;

    .line 101
    invoke-direct {p0, p2}, Lcom/coloros/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private cancelLoaderTask()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->compositionTask:Lcom/coloros/anim/EffectiveAnimationTask;

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->loadedListener:Lcom/coloros/anim/EffectiveAnimationListener;

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationTask;->removeListener(Lcom/coloros/anim/EffectiveAnimationListener;)Lcom/coloros/anim/EffectiveAnimationTask;

    .line 359
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->compositionTask:Lcom/coloros/anim/EffectiveAnimationTask;

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->failureListener:Lcom/coloros/anim/EffectiveAnimationListener;

    invoke-virtual {v0, p0}, Lcom/coloros/anim/EffectiveAnimationTask;->removeFailureListener(Lcom/coloros/anim/EffectiveAnimationListener;)Lcom/coloros/anim/EffectiveAnimationTask;

    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    const/4 v0, 0x0

    .line 797
    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 798
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->clearComposition()V

    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 6

    .line 821
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationView$4;->$SwitchMap$com$coloros$anim$RenderMode:[I

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->renderMode:Lcom/coloros/anim/RenderMode;

    invoke-virtual {v1}, Lcom/coloros/anim/RenderMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_2

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->hasDashPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-ge v0, v5, :cond_1

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getMaskAndMatteCount()I

    move-result v0

    const/4 v5, 0x4

    if-le v0, v5, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 835
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 826
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 823
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/coloros/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 107
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    .line 108
    sget v2, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 109
    sget v3, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawRes and fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 114
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 119
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 124
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 130
    :cond_4
    :goto_1
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_autoPlay:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 131
    iput-boolean v2, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 132
    iput-boolean v2, p0, Lcom/coloros/anim/EffectiveAnimationView;->autoPlay:Z

    .line 135
    :cond_5
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_loop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, v3}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    .line 139
    :cond_6
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatMode(I)V

    .line 144
    :cond_7
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatCount(I)V

    .line 149
    :cond_8
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 150
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setSpeed(F)V

    .line 153
    :cond_9
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_imageAssetsFolder:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 154
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_progress:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setProgress(F)V

    .line 155
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 157
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    new-instance v0, Lcom/coloros/anim/SimpleColorFilter;

    sget v3, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    .line 159
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/coloros/anim/SimpleColorFilter;-><init>(I)V

    .line 160
    new-instance v1, Lcom/coloros/anim/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/coloros/anim/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 161
    new-instance v3, Lcom/coloros/anim/value/EffectiveValueCallback;

    invoke-direct {v3, v0}, Lcom/coloros/anim/value/EffectiveValueCallback;-><init>(Ljava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v1, v0, v3}, Lcom/coloros/anim/EffectiveAnimationView;->addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    .line 164
    :cond_a
    sget v0, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    sget v1, Lcom/coloros/anim/R$styleable;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setScale(F)V

    .line 168
    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method private setCompositionTask(Lcom/coloros/anim/EffectiveAnimationTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->clearComposition()V

    .line 350
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->cancelLoaderTask()V

    .line 351
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->loadedListener:Lcom/coloros/anim/EffectiveAnimationListener;

    .line 352
    invoke-virtual {p1, v0}, Lcom/coloros/anim/EffectiveAnimationTask;->addListener(Lcom/coloros/anim/EffectiveAnimationListener;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->failureListener:Lcom/coloros/anim/EffectiveAnimationListener;

    .line 353
    invoke-virtual {p1, v0}, Lcom/coloros/anim/EffectiveAnimationTask;->addFailureListener(Lcom/coloros/anim/EffectiveAnimationListener;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->compositionTask:Lcom/coloros/anim/EffectiveAnimationTask;

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addOnCompositionLoadedListener(Lcom/coloros/anim/OnCompositionLoadedListener;)Z
    .locals 0
    .param p1    # Lcom/coloros/anim/OnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 842
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .locals 0
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

    .line 704
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    return-void
.end method

.method public addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/SimpleValueCallback;)V
    .locals 2
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

    .line 714
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationView$3;

    invoke-direct {v1, p0, p3}, Lcom/coloros/anim/EffectiveAnimationView$3;-><init>(Lcom/coloros/anim/EffectiveAnimationView;Lcom/coloros/anim/value/SimpleValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/coloros/anim/model/KeyPath;Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->cancelAnimation()V

    .line 749
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public enableBuildLayerDebug()V
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableBuildLayerDebug()V

    return-void
.end method

.method public enableCompositionDebug()V
    .locals 0

    .line 872
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableCompositionDebug()V

    return-void
.end method

.method public enableDrawDebug()V
    .locals 0

    .line 876
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableDrawDebug()V

    return-void
.end method

.method public enableKeyPathDebug()V
    .locals 0

    .line 868
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableKeyPathDebug()V

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    return-void
.end method

.method public getComposition()Lcom/coloros/anim/EffectiveAnimationComposition;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 365
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 784
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getDuration()F

    move-result p0

    float-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 0

    .line 762
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getFrame()I

    move-result p0

    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 627
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFrame()F
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getMaxFrame()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getMinFrame()F

    move-result p0

    return p0
.end method

.method public getPerformanceTracker()Lcom/coloros/anim/PerformanceTracker;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 793
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getPerformanceTracker()Lcom/coloros/anim/PerformanceTracker;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 776
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result p0

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getScale()F

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getSpeed()F

    move-result p0

    return p0
.end method

.method public hasMasks()Z
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->hasMasks()Z

    move-result p0

    return p0
.end method

.method public hasMatte()Z
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->hasMatte()Z

    move-result p0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 193
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

    move-result p0

    return p0
.end method

.method public loop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 259
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 260
    iget-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->autoPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->cancelAnimation()V

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 271
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 219
    instance-of v0, p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 224
    :cond_0
    check-cast p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;

    .line 225
    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 226
    iget-object v0, p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 230
    :cond_1
    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->animationResId:I

    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationResId:I

    .line 231
    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationResId:I

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    .line 234
    :cond_2
    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->progress:F

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setProgress(F)V

    .line 235
    iget-boolean v0, p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->isAnimating:Z

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->playAnimation()V

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    iget-object v1, p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 239
    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatMode(I)V

    .line 240
    iget p1, p1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 205
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/coloros/anim/EffectiveAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 207
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 208
    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationResId:I

    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->animationResId:I

    .line 209
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result v0

    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->progress:F

    .line 210
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result v0

    iput-boolean v0, v1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->isAnimating:Z

    .line 211
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getRepeatMode()I

    move-result v0

    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->repeatMode:I

    .line 213
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getRepeatCount()I

    move-result p0

    iput p0, v1, Lcom/coloros/anim/EffectiveAnimationView$SavedState;->repeatCount:I

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 246
    iget-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->resumeAnimation()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->isAnimating()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 251
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->pauseAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->pauseAnimation()V

    .line 755
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public playAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->playAnimation()V

    .line 420
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->removeAllAnimatorListeners()V

    return-void
.end method

.method public removeAllOnCompositionLoadedListener()V
    .locals 0

    .line 850
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->removeAllUpdateListeners()V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeOnCompositionLoadedListener(Lcom/coloros/anim/OnCompositionLoadedListener;)Z
    .locals 0
    .param p1    # Lcom/coloros/anim/OnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 846
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lcom/coloros/anim/model/KeyPath;)Ljava/util/List;
    .locals 0
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

    .line 693
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public resolveLayers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 857
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->resolveLayers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public resumeAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->resumeAnimation()V

    .line 430
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->reverseAnimationSpeed()V

    return-void
.end method

.method public setAnimation(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 297
    iput p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationResId:I

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 333
    invoke-static {p1, p2}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 303
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->animationResId:I

    .line 305
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p1, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 322
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/EffectiveAnimationTask;)V

    return-void
.end method

.method public setComposition(Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 3
    .param p1    # Lcom/coloros/anim/EffectiveAnimationComposition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 374
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Composition \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 378
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->composition:Lcom/coloros/anim/EffectiveAnimationComposition;

    .line 379
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setComposition(Lcom/coloros/anim/EffectiveAnimationComposition;)Z

    move-result v0

    .line 380
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    .line 381
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->requestLayout()V

    .line 393
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/OnCompositionLoadedListener;

    .line 394
    invoke-interface {v0, p1}, Lcom/coloros/anim/OnCompositionLoadedListener;->onCompositionLoaded(Lcom/coloros/anim/EffectiveAnimationComposition;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDynamicLayerVisibility(Ljava/lang/String;Z)V
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setDynamicLayerVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFontAssetDelegate(Lcom/coloros/anim/FontAssetDelegate;)V
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setFontAssetDelegate(Lcom/coloros/anim/FontAssetDelegate;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setFrame(I)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/coloros/anim/ImageAssetDelegate;)V
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setImageAssetDelegate(Lcom/coloros/anim/ImageAssetDelegate;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->cancelLoaderTask()V

    .line 188
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->cancelLoaderTask()V

    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->cancelLoaderTask()V

    .line 176
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 490
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMaxProgress(F)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 0

    .line 508
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 0
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

    .line 518
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setMinProgress(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setPerformanceTrackingEnabled(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 780
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setProgress(F)V

    return-void
.end method

.method public setRenderMode(Lcom/coloros/anim/RenderMode;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->renderMode:Lcom/coloros/anim/RenderMode;

    .line 817
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setRepeatMode(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setScale(F)V

    .line 740
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 741
    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setSpeed(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/coloros/anim/TextDelegate;)V
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->setTextDelegate(Lcom/coloros/anim/TextDelegate;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 654
    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/EffectiveAnimationDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
