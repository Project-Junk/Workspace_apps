.class Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;
.super Ljava/lang/Object;
.source "ColorPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->addIndicatorDots(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;I)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    iput p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$1400(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$702(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z

    .line 349
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$902(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z

    .line 350
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->stopTraceAnimator()V

    .line 351
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$1400(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;

    move-result-object p1

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;->val$index:I

    invoke-interface {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;->onClick(I)V

    :cond_0
    return-void
.end method
