.class Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AodSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 222
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 223
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;)Lcom/color/support/widget/ColorButton;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorButton;->setVisibility(I)V

    return-void
.end method