.class Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$4;
.super Ljava/lang/Object;
.source "ColorPageIndicator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$4;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$4;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 268
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$4;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$1200(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)I

    move-result v0

    invoke-static {p0, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$1300(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;I)V

    return-void
.end method
