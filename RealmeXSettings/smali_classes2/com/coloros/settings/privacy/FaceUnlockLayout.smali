.class public Lcom/coloros/settings/privacy/FaceUnlockLayout;
.super Landroid/widget/FrameLayout;
.source "FaceUnlockLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/FaceUnlockLayout$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field private c:Z

.field private d:Landroid/animation/ValueAnimator;

.field private e:Lcom/coloros/settings/privacy/FaceUnlockLayout$a;

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/graphics/drawable/AnimationDrawable;

.field private h:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1062
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    .line 1063
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    .line 1065
    iget-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703b7

    .line 1066
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const p3, 0x7f0703b9

    .line 1067
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1069
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x31

    .line 1070
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1071
    iget-object p2, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    iget-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1073
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x7f0806df

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1074
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060306

    invoke-virtual {p3, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1075
    iget-object p3, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    iget-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    new-instance p3, Lcom/coloros/settings/privacy/FaceUnlockLayout$1;

    invoke-direct {p3, p0}, Lcom/coloros/settings/privacy/FaceUnlockLayout$1;-><init>(Lcom/coloros/settings/privacy/FaceUnlockLayout;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    iget-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->addView(Landroid/view/View;)V

    .line 1091
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x30

    .line 1092
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1093
    iget-object p3, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1094
    iget-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1095
    iget-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1096
    iget-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->addView(Landroid/view/View;)V

    .line 1097
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f08060e

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->h:Landroid/graphics/drawable/AnimationDrawable;

    .line 1099
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f08060c

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->g:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/FaceUnlockLayout;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/FaceUnlockLayout;)Lcom/coloros/settings/privacy/FaceUnlockLayout$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->e:Lcom/coloros/settings/privacy/FaceUnlockLayout$a;

    return-object p0
.end method

.method private synthetic d()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$Ln1J8-4j0MkAPajmL1eGYGPBqU8(Lcom/coloros/settings/privacy/FaceUnlockLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->c()V

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->g:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->g:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->c()V

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->h:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->h:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 116
    new-instance v0, Lcom/coloros/settings/privacy/-$$Lambda$FaceUnlockLayout$Ln1J8-4j0MkAPajmL1eGYGPBqU8;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/-$$Lambda$FaceUnlockLayout$Ln1J8-4j0MkAPajmL1eGYGPBqU8;-><init>(Lcom/coloros/settings/privacy/FaceUnlockLayout;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->f:Ljava/lang/Runnable;

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x420

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->f:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->g:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->g:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->h:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->h:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 136
    iput-object v1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->d:Landroid/animation/ValueAnimator;

    :cond_3
    return-void
.end method

.method public setChecking(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->c:Z

    return-void
.end method

.method public setOnFaceClickListener(Lcom/coloros/settings/privacy/FaceUnlockLayout$a;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->e:Lcom/coloros/settings/privacy/FaceUnlockLayout$a;

    return-void
.end method
