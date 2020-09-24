.class Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationMenuRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->fadeInMenu(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 748
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    .line 752
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_2

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fadeInMenu: mMenuContainer ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    .line 754
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " menu visible="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    .line 755
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    .line 756
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Notification"

    const-string v0, "swipe"

    .line 753
    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 763
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$602(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Z)Z

    .line 764
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$800(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$502(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$602(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Z)Z

    return-void
.end method
