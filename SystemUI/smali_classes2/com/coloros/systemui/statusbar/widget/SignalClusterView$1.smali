.class Lcom/coloros/systemui/statusbar/widget/SignalClusterView$1;
.super Lcom/android/systemui/util/Utils$DisableStateTracker;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/widget/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;II)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/android/systemui/util/Utils$DisableStateTracker;->onViewAttachedToWindow(Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Lcom/android/systemui/util/Utils$DisableStateTracker;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/SignalClusterView;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
