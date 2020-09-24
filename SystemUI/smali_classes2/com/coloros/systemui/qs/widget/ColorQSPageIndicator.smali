.class public Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;
.super Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;
.source "ColorQSPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorQSPageIndicator"


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUseOriginalRTL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->mCallbacks:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->mUseOriginalRTL:Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isLayoutRtl()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->mUseOriginalRTL:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->isLayoutRtl()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeCallback(Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDotsCount(I)V
    .locals 4

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->removeDot()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setDotsCount(I)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDotsCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "ColorQSPageIndicator"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setNumPages(I)V

    :cond_1
    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 69
    :goto_1
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->setVisibility(I)V

    return-void
.end method

.method public setNumPages(I)V
    .locals 2

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 85
    :goto_1
    invoke-interface {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;->onShowPageIndicator(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUseOriginalRTL(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator;->mUseOriginalRTL:Z

    return-void
.end method
