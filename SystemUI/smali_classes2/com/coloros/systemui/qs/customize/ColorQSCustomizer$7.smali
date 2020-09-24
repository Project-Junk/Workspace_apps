.class Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 636
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$602(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;Z)Z

    .line 637
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$700(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 627
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$400(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 628
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$500(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;Z)V

    .line 630
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$602(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;Z)Z

    .line 631
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$7;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$700(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method
