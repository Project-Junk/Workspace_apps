.class Lcom/android/systemui/qs/customize/QSCustomizer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 489
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$300(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 495
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$602(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 476
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$300(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 480
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/TileAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 483
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$602(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    return-void
.end method
