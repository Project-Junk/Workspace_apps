.class public Lcom/coloros/anim/EffectiveAnimationView;
.super Landroidx/appcompat/widget/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/EffectiveAnimationView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EffectiveAnimationView"


# instance fields
.field private final b:Lcom/coloros/anim/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/c<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/coloros/anim/b;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/coloros/anim/o;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/anim/l;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/coloros/anim/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/coloros/anim/a;

.field private final m:Lcom/coloros/anim/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/c<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    new-instance p1, Lcom/coloros/anim/b;

    invoke-direct {p1}, Lcom/coloros/anim/b;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    sget-object p1, Lcom/coloros/anim/o;->a:Lcom/coloros/anim/o;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/o;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->j:Ljava/util/Set;

    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    new-instance p1, Lcom/coloros/anim/b;

    invoke-direct {p1}, Lcom/coloros/anim/b;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    sget-object p1, Lcom/coloros/anim/o;->a:Lcom/coloros/anim/o;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/o;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->j:Ljava/util/Set;

    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    invoke-direct {p0, p2}, Lcom/coloros/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    new-instance p1, Lcom/coloros/anim/b;

    invoke-direct {p1}, Lcom/coloros/anim/b;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    sget-object p1, Lcom/coloros/anim/o;->a:Lcom/coloros/anim/o;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/o;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->j:Ljava/util/Set;

    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    invoke-direct {p0, p2}, Lcom/coloros/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coloros/anim/n$a;->EffectiveAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    sget v2, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    sget v3, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawRes and fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_autoPlay:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    iput-boolean v2, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    :cond_5
    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_loop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, v3}, Lcom/coloros/anim/b;->e(I)V

    :cond_6
    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatMode(I)V

    :cond_7
    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatCount(I)V

    :cond_8
    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setSpeed(F)V

    :cond_9
    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_imageAssetsFolder:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_progress:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setProgress(F)V

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->a(Z)V

    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/coloros/anim/p;

    sget v3, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/coloros/anim/p;-><init>(I)V

    new-instance v1, Lcom/coloros/anim/c/f;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/coloros/anim/c/f;-><init>([Ljava/lang/String;)V

    new-instance v3, Lcom/coloros/anim/g/b;

    invoke-direct {v3, v0}, Lcom/coloros/anim/g/b;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lcom/coloros/anim/d;->z:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v1, v0, v3}, Lcom/coloros/anim/EffectiveAnimationView;->a(Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    :cond_a
    sget v0, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    sget v1, Lcom/coloros/anim/n$a;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/anim/b;->d(F)V

    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->k:Lcom/coloros/anim/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->k:Lcom/coloros/anim/f;

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    invoke-virtual {v0, v1}, Lcom/coloros/anim/f;->b(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->k:Lcom/coloros/anim/f;

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    invoke-virtual {v0, p0}, Lcom/coloros/anim/f;->d(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->d()V

    return-void
.end method

.method private h()V
    .locals 6

    sget-object v0, Lcom/coloros/anim/EffectiveAnimationView$3;->a:[I

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/o;

    invoke-virtual {v1}, Lcom/coloros/anim/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-ge v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->b()I

    move-result v0

    const/4 v5, 0x4

    if-le v0, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v2, v3}, Lcom/coloros/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    :goto_1
    :pswitch_2
    invoke-virtual {p0, v1, v3}, Lcom/coloros/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCompositionTask(Lcom/coloros/anim/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->g()V

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->f()V

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/f;->a(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    invoke-virtual {p1, v0}, Lcom/coloros/anim/f;->c(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->k:Lcom/coloros/anim/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->e()V

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public a(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/f;)V

    return-void
.end method

.method public a(Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/anim/c/f;",
            "TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/coloros/anim/EffectiveAnimationView;->a(Landroid/util/JsonReader;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->g()V

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->n()Z

    move-result p0

    return p0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->s()V

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->t()V

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public getComposition()Lcom/coloros/anim/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->e()F

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

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->k()I

    move-result p0

    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFrame()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->i()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->h()F

    move-result p0

    return p0
.end method

.method public getPerformanceTracker()Lcom/coloros/anim/m;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->c()Lcom/coloros/anim/m;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->u()F

    move-result p0

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->m()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->l()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->q()F

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->j()F

    move-result p0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/n;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/n;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->a()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/n;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/n;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/coloros/anim/EffectiveAnimationView$a;

    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationView$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/n;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->b:I

    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    :cond_2
    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->c:F

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setProgress(F)V

    iget-boolean v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->d:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->a()V

    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    iget-object v1, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/anim/b;->a(Ljava/lang/String;)V

    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->f:I

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatMode(I)V

    iget p1, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->g:I

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/n;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coloros/anim/EffectiveAnimationView$a;

    invoke-direct {v1, v0}, Lcom/coloros/anim/EffectiveAnimationView$a;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->a:Ljava/lang/String;

    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->b:I

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->u()F

    move-result v0

    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->c:F

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->n()Z

    move-result v0

    iput-boolean v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->d:Z

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->l()I

    move-result v0

    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->f:I

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->m()I

    move-result p0

    iput p0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->g:I

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimation(I)V
    .locals 1

    iput p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/g;->a(Landroid/content/Context;I)Lcom/coloros/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/f;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/g;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/f;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coloros/anim/EffectiveAnimationView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/f;)V

    return-void
.end method

.method public setComposition(Lcom/coloros/anim/a;)V
    .locals 3

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Composition \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p0}, Lcom/coloros/anim/b;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/a;)Z

    move-result v0

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->h()V

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->requestLayout()V

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->j:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/l;

    invoke-interface {v0, p1}, Lcom/coloros/anim/l;->a(Lcom/coloros/anim/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFontAssetDelegate(Lcom/coloros/anim/i;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/i;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->c(I)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/coloros/anim/j;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/j;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->f()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/n;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->f()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/n;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->f()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/n;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->b(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->b(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->b(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->e(F)V

    return-void
.end method

.method public setRenderMode(Lcom/coloros/anim/o;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/o;

    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->h()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->e(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->d(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->d(F)V

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->c(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/coloros/anim/q;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/q;)V

    return-void
.end method
