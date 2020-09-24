.class Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;
.super Ljava/lang/Object;
.source "EnrollAnimationLayout.java"

# interfaces
.implements Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;->this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCompleted()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;->this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->access$000(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;->this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->access$100(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;->this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->access$000(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;->onInsideCompleted()V

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;->this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->access$102(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;Z)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;->this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->access$200(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;->this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->access$200(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$1;->this$0:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->access$300(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->getTraceColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->fillBackground(I)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method
