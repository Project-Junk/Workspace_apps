.class Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClockFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->animateGone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$4;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 258
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 259
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$4;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->setVisibility(I)V

    return-void
.end method
