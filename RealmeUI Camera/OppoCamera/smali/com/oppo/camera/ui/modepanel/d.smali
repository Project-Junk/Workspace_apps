.class public Lcom/oppo/camera/ui/modepanel/d;
.super Ljava/lang/Object;
.source "ModeTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/modepanel/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/oppo/camera/ui/modepanel/d$a;

.field private e:I

.field private f:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->a:Landroid/app/Activity;

    .line 24
    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    .line 25
    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->c:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->d:Lcom/oppo/camera/ui/modepanel/d$a;

    const/16 v1, 0x8

    .line 27
    iput v1, p0, Lcom/oppo/camera/ui/modepanel/d;->e:I

    .line 28
    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->f:Landroid/graphics/Typeface;

    .line 31
    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->a:Landroid/app/Activity;

    .line 33
    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/modepanel/d;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(FF)Landroid/view/animation/AnimationSet;
    .locals 2

    .line 125
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 126
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->a:Landroid/app/Activity;

    const v0, 0x7f080136

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    .line 39
    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f080135

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->c:Landroid/widget/TextView;

    .line 40
    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/d;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()Landroid/graphics/Typeface;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->f:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "/system/fonts/ColorOSUI-Medium.ttf"

    .line 94
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->f:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->f:Landroid/graphics/Typeface;

    const-string v0, "ModeTitle"

    const-string v1, "getFontTypeface, create special typeface fail"

    .line 98
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->f:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/ui/modepanel/d;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    const-wide/16 v1, 0xa0

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 107
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/d;->a:Landroid/app/Activity;

    const v2, 0x7f01004b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 109
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 111
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private d()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/ui/modepanel/d;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    const-wide/16 v1, 0x50

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 117
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/d;->a:Landroid/app/Activity;

    const v2, 0x7f01004b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 121
    iget-object v1, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeTitle"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/oppo/camera/ui/modepanel/d;->e:I

    if-ne v0, p1, :cond_0

    return-void

    .line 67
    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/modepanel/d;->e:I

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/d;->c()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/modepanel/d;->d()V

    goto :goto_0

    .line 76
    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/modepanel/d$a;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->d:Lcom/oppo/camera/ui/modepanel/d$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/oppo/camera/ui/modepanel/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 57
    iget v0, p0, Lcom/oppo/camera/ui/modepanel/d;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/oppo/camera/ui/modepanel/d;->d:Lcom/oppo/camera/ui/modepanel/d$a;

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Lcom/oppo/camera/ui/modepanel/d$a;->a()V

    :cond_0
    return-void
.end method
