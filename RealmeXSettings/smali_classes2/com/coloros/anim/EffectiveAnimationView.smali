.class public Lcom/coloros/anim/EffectiveAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "EffectiveAnimationView.java"


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
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/coloros/anim/n;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/coloros/anim/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/coloros/anim/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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

    .line 90
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    .line 66
    new-instance p1, Lcom/coloros/anim/b;

    invoke-direct {p1}, Lcom/coloros/anim/b;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    .line 71
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    .line 72
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    .line 73
    sget-object p1, Lcom/coloros/anim/n;->a:Lcom/coloros/anim/n;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/n;

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->j:Ljava/util/Set;

    .line 82
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    const/4 p1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    .line 66
    new-instance p1, Lcom/coloros/anim/b;

    invoke-direct {p1}, Lcom/coloros/anim/b;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    .line 71
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    .line 72
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    .line 73
    sget-object p1, Lcom/coloros/anim/n;->a:Lcom/coloros/anim/n;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/n;

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->j:Ljava/util/Set;

    .line 82
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    .line 96
    invoke-direct {p0, p2}, Lcom/coloros/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    .line 66
    new-instance p1, Lcom/coloros/anim/b;

    invoke-direct {p1}, Lcom/coloros/anim/b;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    .line 71
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    .line 72
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    .line 73
    sget-object p1, Lcom/coloros/anim/n;->a:Lcom/coloros/anim/n;

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/n;

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->j:Ljava/util/Set;

    .line 82
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationView$2;-><init>(Lcom/coloros/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    .line 101
    invoke-direct {p0, p2}, Lcom/coloros/anim/EffectiveAnimationView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->k:Lcom/coloros/anim/f;

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    invoke-virtual {v0, v1}, Lcom/coloros/anim/f;->b(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    .line 359
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->k:Lcom/coloros/anim/f;

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    invoke-virtual {v0, v1}, Lcom/coloros/anim/f;->d(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    :cond_0
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coloros/anim/m$a;->EffectiveAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 107
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    .line 108
    sget v2, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 109
    sget v3, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawRes and fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 114
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 119
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 124
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 130
    :cond_4
    :goto_1
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_autoPlay:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 131
    iput-boolean v2, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    .line 132
    iput-boolean v2, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    .line 135
    :cond_5
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_loop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, v3}, Lcom/coloros/anim/b;->d(I)V

    .line 139
    :cond_6
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatMode(I)V

    .line 144
    :cond_7
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatCount(I)V

    .line 149
    :cond_8
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 150
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setSpeed(F)V

    .line 153
    :cond_9
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_imageAssetsFolder:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 154
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_progress:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setProgress(F)V

    .line 155
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->a(Z)V

    .line 157
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    new-instance v0, Lcom/coloros/anim/o;

    sget v3, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_colorFilter:I

    .line 159
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/coloros/anim/o;-><init>(I)V

    .line 160
    new-instance v1, Lcom/coloros/anim/c/f;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/coloros/anim/c/f;-><init>([Ljava/lang/String;)V

    .line 161
    new-instance v3, Lcom/coloros/anim/g/b;

    invoke-direct {v3, v0}, Lcom/coloros/anim/g/b;-><init>(Ljava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/coloros/anim/d;->z:Landroid/graphics/ColorFilter;

    invoke-direct {p0, v1, v0, v3}, Lcom/coloros/anim/EffectiveAnimationView;->a(Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    .line 164
    :cond_a
    sget v0, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    sget v1, Lcom/coloros/anim/m$a;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/anim/b;->c(F)V

    .line 168
    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()V

    return-void
.end method

.method private a(Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 1
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

    .line 704
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->a(Z)V

    return-void
.end method

.method private b()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->c()V

    .line 420
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 821
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationView$3;->a:[I

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/n;

    invoke-virtual {v1}, Lcom/coloros/anim/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_2

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 22095
    iget-boolean v0, v0, Lcom/coloros/anim/a;->m:Z

    if-eqz v0, :cond_1

    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_1

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    if-eqz v0, :cond_2

    .line 22102
    iget v0, v0, Lcom/coloros/anim/a;->n:I

    const/4 v4, 0x4

    if-le v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0, v1, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_2
    return-void
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

    const/4 v0, 0x0

    .line 7797
    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    .line 7798
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0}, Lcom/coloros/anim/b;->b()V

    .line 350
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->a()V

    .line 351
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->m:Lcom/coloros/anim/c;

    .line 352
    invoke-virtual {p1, v0}, Lcom/coloros/anim/f;->a(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->b:Lcom/coloros/anim/c;

    .line 353
    invoke-virtual {p1, v0}, Lcom/coloros/anim/f;->c(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->k:Lcom/coloros/anim/f;

    return-void
.end method


# virtual methods
.method public getComposition()Lcom/coloros/anim/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/anim/a;->a()F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 18629
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    .line 19080
    iget v0, v0, Lcom/coloros/anim/f/c;->d:F

    float-to-int v0, v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 14177
    iget-object v0, v0, Lcom/coloros/anim/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 11472
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->g()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 11411
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->f()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lcom/coloros/anim/l;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 20225
    iget-object v1, v0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-eqz v1, :cond_0

    .line 20226
    iget-object v0, v0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 21115
    iget-object v0, v0, Lcom/coloros/anim/a;->a:Lcom/coloros/anim/l;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 19798
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->b()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 13687
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 13666
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 17753
    iget v0, v0, Lcom/coloros/anim/b;->f:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 11591
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    .line 12187
    iget v0, v0, Lcom/coloros/anim/f/c;->c:F

    return v0
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

    iget-object v1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 259
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 260
    iget-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->b()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 6622
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 6707
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6748
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 6787
    iget-object v1, v0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6788
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->cancel()V

    .line 6749
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()V

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->g:Z

    .line 271
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 219
    instance-of v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 224
    :cond_0
    check-cast p1, Lcom/coloros/anim/EffectiveAnimationView$a;

    .line 225
    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationView$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 226
    iget-object v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 230
    :cond_1
    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->b:I

    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    .line 231
    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(I)V

    .line 234
    :cond_2
    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->c:F

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setProgress(F)V

    .line 235
    iget-boolean v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->d:Z

    if-eqz v0, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->b()V

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    iget-object v1, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->e:Ljava/lang/String;

    .line 4172
    iput-object v1, v0, Lcom/coloros/anim/b;->h:Ljava/lang/String;

    .line 239
    iget v0, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->f:I

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatMode(I)V

    .line 240
    iget p1, p1, Lcom/coloros/anim/EffectiveAnimationView$a;->g:I

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 205
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/coloros/anim/EffectiveAnimationView$a;

    invoke-direct {v1, v0}, Lcom/coloros/anim/EffectiveAnimationView$a;-><init>(Landroid/os/Parcelable;)V

    .line 207
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->a:Ljava/lang/String;

    .line 208
    iget v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->b:I

    .line 209
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 1798
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->b()F

    move-result v0

    .line 209
    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->c:F

    .line 210
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 2707
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result v0

    .line 210
    iput-boolean v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->d:Z

    .line 211
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 3177
    iget-object v0, v0, Lcom/coloros/anim/b;->h:Ljava/lang/String;

    .line 211
    iput-object v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->e:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 3666
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->getRepeatMode()I

    move-result v0

    .line 212
    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->f:I

    .line 213
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 3687
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->getRepeatCount()I

    move-result v0

    .line 213
    iput v0, v1, Lcom/coloros/anim/EffectiveAnimationView$a;->g:I

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
    iget-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    if-eqz p1, :cond_1

    .line 4429
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p1}, Lcom/coloros/anim/b;->d()V

    .line 4430
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()V

    return-void

    .line 4622
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 4707
    iget-object p1, p1, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {p1}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result p1

    .line 250
    iput-boolean p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->f:Z

    .line 5622
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 5707
    iget-object p1, p1, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {p1}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5754
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 5792
    iget-object p2, p1, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 5793
    iget-object p1, p1, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    const/4 p2, 0x1

    .line 6278
    invoke-virtual {p1, p2}, Lcom/coloros/anim/f/c;->b(Z)V

    .line 5755
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()V

    :cond_1
    return-void
.end method

.method public setAnimation(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 297
    iput p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/g;->a(Landroid/content/Context;I)Lcom/coloros/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/f;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 303
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->e:I

    .line 305
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/g;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/f;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7322
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 7333
    invoke-static {v0}, Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;)Lcom/coloros/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/f;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/anim/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setCompositionTask(Lcom/coloros/anim/f;)V

    return-void
.end method

.method public setComposition(Lcom/coloros/anim/a;)V
    .locals 6
    .param p1    # Lcom/coloros/anim/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 374
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set Composition \n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p0}, Lcom/coloros/anim/b;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 378
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->l:Lcom/coloros/anim/a;

    .line 379
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 8186
    iget-object v1, v0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_1

    move v2, v3

    goto/16 :goto_2

    .line 8189
    :cond_1
    sget-boolean v1, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v1, :cond_2

    .line 8190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "EffectiveAnimationDrawable::setComposition:composition = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/anim/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_2
    const-string v1, "EffectiveAnimationDrawable::setComposition"

    .line 8192
    invoke-static {v1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 8193
    iput-boolean v3, v0, Lcom/coloros/anim/b;->m:Z

    .line 8194
    invoke-virtual {v0}, Lcom/coloros/anim/b;->b()V

    .line 8195
    iput-object p1, v0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 8196
    invoke-virtual {v0}, Lcom/coloros/anim/b;->a()V

    .line 8197
    iget-object v1, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    .line 9152
    iget-object v4, v1, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v4, :cond_3

    move v3, v2

    .line 9153
    :cond_3
    iput-object p1, v1, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-eqz v3, :cond_4

    .line 9156
    iget v3, v1, Lcom/coloros/anim/f/c;->e:F

    .line 10133
    iget v4, p1, Lcom/coloros/anim/a;->j:F

    .line 9157
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Lcom/coloros/anim/f/c;->f:F

    .line 10137
    iget v5, p1, Lcom/coloros/anim/a;->k:F

    .line 9158
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    .line 9156
    invoke-virtual {v1, v3, v4}, Lcom/coloros/anim/f/c;->a(FF)V

    goto :goto_0

    .line 11133
    :cond_4
    iget v3, p1, Lcom/coloros/anim/a;->j:F

    float-to-int v3, v3

    int-to-float v3, v3

    .line 11137
    iget v4, p1, Lcom/coloros/anim/a;->k:F

    float-to-int v4, v4

    int-to-float v4, v4

    .line 9161
    invoke-virtual {v1, v3, v4}, Lcom/coloros/anim/f/c;->a(FF)V

    .line 9163
    :goto_0
    iget v3, v1, Lcom/coloros/anim/f/c;->d:F

    const/4 v4, 0x0

    .line 9164
    iput v4, v1, Lcom/coloros/anim/f/c;->d:F

    float-to-int v3, v3

    .line 9165
    invoke-virtual {v1, v3}, Lcom/coloros/anim/f/c;->a(I)V

    .line 8198
    iget-object v1, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v1}, Lcom/coloros/anim/f/c;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/anim/b;->d(F)V

    .line 8199
    iget v1, v0, Lcom/coloros/anim/b;->f:F

    invoke-virtual {v0, v1}, Lcom/coloros/anim/b;->c(F)V

    .line 8200
    invoke-virtual {v0}, Lcom/coloros/anim/b;->f()V

    .line 8204
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8205
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/b$a;

    .line 8207
    invoke-interface {v3}, Lcom/coloros/anim/b$a;->a()V

    .line 8208
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 8210
    :cond_5
    iget-object v1, v0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8212
    iget-boolean v0, v0, Lcom/coloros/anim/b;->l:Z

    invoke-virtual {p1, v0}, Lcom/coloros/anim/a;->a(Z)V

    .line 380
    :goto_2
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()V

    .line 381
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    if-ne p1, v0, :cond_6

    if-nez v2, :cond_6

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->requestLayout()V

    .line 393
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    :cond_7
    return-void
.end method

.method public setFontAssetDelegate(Lcom/coloros/anim/i;)V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 16731
    iput-object p1, v0, Lcom/coloros/anim/b;->c:Lcom/coloros/anim/i;

    .line 16732
    iget-object v1, v0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/a;

    if-eqz v1, :cond_0

    .line 16733
    iget-object v0, v0, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/a;

    .line 17046
    iput-object p1, v0, Lcom/coloros/anim/b/a;->e:Lcom/coloros/anim/i;

    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->c(I)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/coloros/anim/j;)V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 15720
    iput-object p1, v0, Lcom/coloros/anim/b;->i:Lcom/coloros/anim/j;

    .line 15721
    iget-object v1, v0, Lcom/coloros/anim/b;->g:Lcom/coloros/anim/b/b;

    if-eqz v1, :cond_0

    .line 15722
    iget-object v0, v0, Lcom/coloros/anim/b;->g:Lcom/coloros/anim/b/b;

    .line 16053
    iput-object p1, v0, Lcom/coloros/anim/b/b;->b:Lcom/coloros/anim/j;

    :cond_0
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 15172
    iput-object p1, v0, Lcom/coloros/anim/b;->h:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->a()V

    .line 188
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->a()V

    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->a()V

    .line 176
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->b(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 490
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->b(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->a(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->a(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 20218
    iput-boolean p1, v0, Lcom/coloros/anim/b;->l:Z

    .line 20219
    iget-object v1, v0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-eqz v1, :cond_0

    .line 20220
    iget-object v0, v0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 780
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->d(F)V

    return-void
.end method

.method public setRenderMode(Lcom/coloros/anim/n;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->i:Lcom/coloros/anim/n;

    .line 817
    invoke-direct {p0}, Lcom/coloros/anim/EffectiveAnimationView;->c()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->d(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 13677
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/f/c;->setRepeatMode(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/b;->c(F)V

    .line 740
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 741
    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object p1, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 12598
    iget-object v0, v0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    .line 13191
    iput p1, v0, Lcom/coloros/anim/f/c;->c:F

    return-void
.end method

.method public setTextDelegate(Lcom/coloros/anim/p;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView;->c:Lcom/coloros/anim/b;

    .line 17745
    iput-object p1, v0, Lcom/coloros/anim/b;->d:Lcom/coloros/anim/p;

    return-void
.end method
