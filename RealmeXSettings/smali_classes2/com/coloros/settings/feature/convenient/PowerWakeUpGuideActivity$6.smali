.class final Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PowerWakeUpGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$6;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 280
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$6;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->finish()V

    return-void
.end method
