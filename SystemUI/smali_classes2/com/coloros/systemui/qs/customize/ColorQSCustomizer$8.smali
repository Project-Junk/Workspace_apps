.class Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;
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

    .line 641
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 657
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$400(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 658
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setVisibility(I)V

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$700(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 663
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$802(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 644
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$400(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 645
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->setVisibility(I)V

    .line 647
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$700(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 648
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$100(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$300(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 651
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$802(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;Z)Z

    return-void
.end method
