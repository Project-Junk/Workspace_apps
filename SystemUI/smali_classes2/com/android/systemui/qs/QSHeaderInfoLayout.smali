.class public final Lcom/android/systemui/qs/QSHeaderInfoLayout;
.super Landroid/widget/FrameLayout;
.source "QSHeaderInfoLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001:\u0001!B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0014J0\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0014J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0014J,\u0010\u001c\u001a\u00020\u0007*\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0014H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/android/systemui/qs/QSHeaderInfoLayout;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "alarmContainer",
        "Landroid/view/View;",
        "location",
        "Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;",
        "ringerContainer",
        "statusSeparator",
        "onFinishInflate",
        "",
        "onLayout",
        "changed",
        "",
        "l",
        "t",
        "r",
        "b",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "layoutView",
        "pWidth",
        "pHeight",
        "offset",
        "RTL",
        "Location",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private alarmContainer:Landroid/view/View;

.field private final location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

.field private ringerContainer:Landroid/view/View;

.field private statusSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
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

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
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

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 36
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 38
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSHeaderInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final layoutView(Landroid/view/View;IIIZ)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, p2, p4, v1, p5}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->setLocationFromOffset(IIIZ)V

    .line 70
    iget-object p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->getLeft()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->location:Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->getRight()I

    move-result p0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p0, p3}, Landroid/view/View;->layout(IIII)V

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a006a

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.alarm_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    const v0, 0x7f0a04bb

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.ringer_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    const v0, 0x7f0a0563

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.status_separator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    const-string v1, "statusSeparator"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->isLayoutRtl()Z

    move-result v0

    sub-int p2, p4, p2

    sub-int p3, p5, p3

    const/4 p1, 0x0

    .line 62
    iget-object v4, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-nez v4, :cond_2

    const-string p4, "alarmContainer"

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v7, 0x0

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    move-result p4

    add-int/2addr p1, p4

    .line 63
    iget-object v4, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    if-nez v4, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p1

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    move-result p4

    add-int/2addr p4, p1

    .line 64
    iget-object p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-nez p1, :cond_4

    const-string p5, "ringerContainer"

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    move p5, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->layoutView(Landroid/view/View;IIIZ)I

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, -0x80000000

    .line 76
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 75
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    const-string v2, "statusSeparator"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_a

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    const-string v3, "alarmContainer"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 85
    iget-object v4, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->statusSeparator:Landroid/view/View;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 86
    iget-object v4, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    const-string v5, "ringerContainer"

    if-nez v4, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    sub-int/2addr v6, v2

    .line 88
    div-int/lit8 v2, v6, 0x2

    if-ge v0, v2, :cond_5

    .line 90
    iget-object v2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-nez v2, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sub-int/2addr v6, v0

    .line 92
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 91
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 89
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    :cond_5
    if-ge v4, v2, :cond_7

    .line 96
    iget-object v2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-nez v2, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    sub-int/2addr v6, v4

    .line 98
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 97
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 96
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->alarmContainer:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 104
    :cond_8
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 102
    invoke-virtual {p0, v0, v3, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->measureChild(Landroid/view/View;II)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout;->ringerContainer:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 108
    :cond_9
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 106
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->measureChild(Landroid/view/View;II)V

    .line 112
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout;->setMeasuredDimension(II)V

    return-void
.end method
