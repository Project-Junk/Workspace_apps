.class final Landroidx/dynamicanimation/animation/DynamicAnimation$7;
.super Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/DynamicAnimation$1;)V

    return-void
.end method


# virtual methods
.method public final getValue(Landroid/view/View;)F
    .locals 0

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result p1

    return p1
.end method

.method public final bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 149
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$7;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public final setValue(Landroid/view/View;F)V
    .locals 0

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 149
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$7;->setValue(Landroid/view/View;F)V

    return-void
.end method
