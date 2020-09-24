.class public Lcom/coloros/anim/model/layer/NullLayer;
.super Lcom/coloros/anim/model/layer/BaseLayer;
.source "NullLayer.java"


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    return-void
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    const/4 p0, 0x0

    .line 22
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
