.class public final Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "Animation5GImageView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0014J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0014\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u0015\u001a\u00020\nH\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "cancelAnimation",
        "",
        "drawable",
        "Landroid/graphics/drawable/AnimationDrawable;",
        "setFrame",
        "",
        "i",
        "i1",
        "i2",
        "i3",
        "setVisibility",
        "startAnimation",
        "transformMatrix",
        "Companion",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView$Companion;

.field private static final TAG:Ljava/lang/String; = "Animation5GView"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->Companion:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 24
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final transformMatrix()V
    .locals 6

    .line 57
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 60
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 63
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 64
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    sub-float v0, v1, v0

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v0, v5

    sub-float/2addr v2, v3

    .line 65
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {v4, v2, v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 67
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final cancelAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/AnimationDrawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x8

    .line 37
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    .line 50
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p2

    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p2, p3, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->transformMatrix()V

    :cond_0
    return p1
.end method

.method public setVisibility(I)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/AnimationDrawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->setVisibility(I)V

    .line 32
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method
