.class public Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;
.super Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;
.source "OneshotDrawableDecorator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p2    # Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;->updateCache(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->onStop()V

    return-void
.end method

.method public updateCache(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;->mPreviousDrawable:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;->mPreviousDrawable:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->release()V

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;->mPreviousDrawable:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 46
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_0
    if-ge p1, v1, :cond_2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 49
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/view/OneshotDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

    invoke-virtual {v3, v0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->update(Z)V

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
