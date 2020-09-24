.class final Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$1;
.super Ljava/lang/Object;
.source "PowerWakeUpGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 97
    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$1;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    if-eqz p2, :cond_2

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$1;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$1;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$1;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;Landroid/view/View;)V

    return v0

    .line 103
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$1;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
