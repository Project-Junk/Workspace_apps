.class Lcom/android/systemui/statusbar/phone/PanelView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$clearAllExpandHack:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->val$clearAllExpandHack:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 984
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1000
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1001
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->setHomePressed(Z)V

    .line 1003
    :cond_0
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flingToHeight, onAnimationEnd, mCancelled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mExpandedHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",endValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 1006
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "animator is null!"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    .line 1003
    invoke-static {v1, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->val$clearAllExpandHack:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->mCancelled:Z

    if-nez p1, :cond_2

    .line 1009
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 1011
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$200(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V

    .line 1012
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->mCancelled:Z

    if-nez p1, :cond_3

    .line 1013
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1015
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 968
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingToHeight, onAnimationStart, mExpandedHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
