.class Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AodSignatureSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;->animateGone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;Landroid/view/View;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 237
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity$2;->val$view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
