.class Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AodSignatureSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 184
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;)Lcom/color/support/widget/ColorButton;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorButton;->setVisibility(I)V

    return-void
.end method
