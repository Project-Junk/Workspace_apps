.class public Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;
.super Ljava/lang/Object;
.source "SyncLoadingDrawableDecorator.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;
    }
.end annotation


# static fields
.field private static final IDLE_WAIT_TIME:J = 0x3cL

.field private static final SMOOTH_THRESHOLD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SyncLoadingDrawableDecorator"


# instance fields
.field protected mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field protected mBlendColor:I

.field protected mContext:Landroid/content/Context;

.field private mDecodePool:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected mHeight:I

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLessBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mOptions:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

.field private mPaint:Landroid/graphics/Paint;

.field protected mPreviousDrawable:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

.field private mSkipDraw:I

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 11
    .param p2    # Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mBlendColor:I

    .line 58
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mLessBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 59
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x4

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-wide/16 v5, 0x3c

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mDecodePool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 66
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mSkipDraw:I

    .line 71
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 73
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mOptions:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    .line 75
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getFrames()I

    move-result v2

    .line 77
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getDuration()I

    move-result v3

    .line 78
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->isReverse()Z

    move-result v4

    .line 79
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->isOneshot()Z

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 p2, 0x1

    const/16 p3, 0x10

    if-gt v3, p3, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->getSkipFrameNum()I

    move-result p3

    add-int/2addr p3, p2

    mul-int/2addr v3, p3

    goto :goto_0

    :cond_0
    move p3, p2

    .line 86
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v6, "cannot find drawable "

    const-string v7, "SyncLoadingDrawableDecorator"

    const-string v8, "drawable"

    const/16 v9, 0x5f

    if-nez v4, :cond_2

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_4

    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v8, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 92
    invoke-virtual {p0, v5, v10, v3}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->addDrawableFrame(Landroid/content/res/Resources;II)V

    goto :goto_2

    .line 94
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/2addr v4, p3

    goto :goto_1

    :cond_2
    sub-int/2addr v2, p2

    :goto_3
    if-ltz v2, :cond_4

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v8, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 101
    invoke-virtual {p0, v5, v4, v3}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->addDrawableFrame(Landroid/content/res/Resources;II)V

    goto :goto_4

    .line 103
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sub-int/2addr v2, p3

    goto :goto_3

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 108
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->updateParameters()V

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mLessBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 111
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mDecodePool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mSkipDraw:I

    return p0
.end method

.method static synthetic access$008(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)I
    .locals 2

    .line 44
    iget v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mSkipDraw:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mSkipDraw:I

    return v0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mLessBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mDecodePool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Landroid/graphics/Paint;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private getSkipFrameNum()I
    .locals 0

    .line 115
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isHighFramePlatform()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addDrawableFrame(Landroid/content/res/Resources;II)V
    .locals 0

    .line 123
    new-instance p1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

    invoke-direct {p1, p0, p2, p3}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;-><init>(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;II)V

    .line 124
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mSkipDraw:I

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

    .line 136
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateCache(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;)V
    .locals 0

    return-void
.end method

.method public updateColor(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mBlendColor:I

    return-void
.end method
