.class public Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "ColorAnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;,
        Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;,
        Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x4

.field public static final FORCE_RELEASE_BITMAP_AFTER_DRAW:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorAnimationDrawable"


# instance fields
.field private mDecorator:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;

.field private mOnAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V
    .locals 1
    .param p2    # Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    if-nez p2, :cond_0

    const-string p0, "ColorAnimationDrawable"

    const-string p1, "cannot initial by a null option"

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->isOneshot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mDecorator:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/coloros/systemui/keyguard/view/LoopAnimationDrawableDecorator;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/systemui/keyguard/view/LoopAnimationDrawableDecorator;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mDecorator:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;

    :goto_0
    return-void
.end method


# virtual methods
.method public notifyAnimationDrawableEnd()V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mOnAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    if-eqz p0, :cond_0

    .line 215
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;->onAnimationDrawableEnd()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mDecorator:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;

    instance-of v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    if-eqz v0, :cond_0

    .line 66
    check-cast p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mOptions:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mOnAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mDecorator:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;->onStart()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mOnAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;->oAnimationDrawableStart()V

    .line 49
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 55
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mDecorator:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;->onStop()V

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mOnAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    if-eqz p0, :cond_1

    .line 59
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;->onAnimationDrawableStop()V

    :cond_1
    return-void
.end method

.method public updateColor(I)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->mDecorator:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0, p1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$ColorAnimationDrawableDecorator;->updateColor(I)V

    :cond_0
    return-void
.end method
