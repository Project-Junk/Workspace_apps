.class Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;
.super Ljava/lang/Object;
.source "FullScreenBannerHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->executeBannerCollpseAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

.field final synthetic val$anim:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iput-boolean p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->val$anim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 453
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$600(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->removeMessages(I)V

    .line 454
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$700(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$800(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$700(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 456
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$902(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/FullScreenBanner;

    .line 460
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$200(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->val$anim:Z

    if-nez p1, :cond_1

    .line 461
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object v1, p1, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$300(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->showBanner(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 462
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$202(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z

    goto :goto_0

    .line 464
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$302(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 468
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$1000(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 469
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$1000(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->showBanner(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    .line 471
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$1102(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z

    .line 475
    :goto_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$1200(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 476
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$1200(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->showBanner(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 479
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$1302(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
