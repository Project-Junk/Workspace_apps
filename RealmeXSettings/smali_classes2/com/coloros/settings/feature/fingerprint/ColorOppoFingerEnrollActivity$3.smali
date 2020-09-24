.class Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$3;
.super Ljava/lang/Object;
.source "ColorOppoFingerEnrollActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$3;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$3;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1300(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x2

    .line 462
    new-array v0, v0, [I

    .line 463
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$3;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1300(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 464
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$3;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1400(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    move-result-object v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$3;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1300(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->adjustGuideViewLoc(I)V

    return-void
.end method
