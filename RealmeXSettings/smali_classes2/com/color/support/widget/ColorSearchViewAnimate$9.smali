.class Lcom/color/support/widget/ColorSearchViewAnimate$9;
.super Ljava/lang/Object;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$9;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 973
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$9;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    const-string v2, "ColorSearchViewAnimate"

    if-ne v0, v1, :cond_1

    .line 974
    invoke-static {}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1400()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onClick: hint"

    .line 975
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$9;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1500(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    return-void

    .line 978
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$9;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 979
    invoke-static {}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1400()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onClick: cancel button"

    .line 980
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$9;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1700(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    :cond_3
    return-void
.end method
