.class Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 89
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 90
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$400(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getTranslation()F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 92
    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipTopAmount:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)I

    move-result v3

    add-int/2addr v2, v3

    .line 94
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getWidth()I

    move-result v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v3, p1

    .line 95
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getActualHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipBottomAmount:I

    sub-int/2addr p1, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 100
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getBgHorizontalPadding()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getBgHorizontalPadding()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_2

    .line 103
    :cond_1
    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_2

    .line 112
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPathCustom(Z)Landroid/graphics/Path;

    move-result-object p1

    goto :goto_1

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 124
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$600(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
