.class public Lcom/coloros/systemui/keyguard/view/GlobalThemeAnimationDrawableDecorator;
.super Ljava/lang/Object;
.source "GlobalThemeAnimationDrawableDecorator.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalThemeAnimationDrawableDecorator"


# instance fields
.field protected mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 8
    .param p2    # Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/GlobalThemeAnimationDrawableDecorator;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/view/GlobalThemeAnimationDrawableDecorator;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 32
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getFrames()I

    move-result v1

    .line 34
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getDuration()I

    move-result v2

    .line 35
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->isReverse()Z

    move-result v3

    .line 36
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->isOneshot()Z

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "cannot find drawable "

    const-string v4, "GlobalThemeAnimationDrawableDecorator"

    const-string v5, "drawable"

    const/16 v6, 0x5f

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 44
    invoke-virtual {p0, p2, v7, v2}, Lcom/coloros/systemui/keyguard/view/GlobalThemeAnimationDrawableDecorator;->addDrawableFrame(Landroid/content/res/Resources;II)V

    goto :goto_1

    .line 46
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 54
    invoke-virtual {p0, p2, v3, v2}, Lcom/coloros/systemui/keyguard/view/GlobalThemeAnimationDrawableDecorator;->addDrawableFrame(Landroid/content/res/Resources;II)V

    goto :goto_3

    .line 56
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawableFrame(Landroid/content/res/Resources;II)V
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/GlobalThemeAnimationDrawableDecorator;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public updateColor(I)V
    .locals 0

    return-void
.end method
