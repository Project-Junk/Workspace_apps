.class Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "ColorNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/color/support/widget/ColorNumberPicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    .line 1696
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1708
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 1709
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 1738
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 1739
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mMode:I

    .line 1740
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1741
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 1750
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 1751
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mMode:I

    .line 1752
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1753
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ColorNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    .line 1718
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mMode:I

    .line 1719
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1720
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, p0}, Lcom/color/support/widget/ColorNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1721
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumberPicker;->access$100(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1722
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->access$102(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    .line 1723
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumberPicker;->access$200(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    .line 1725
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->access$302(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    .line 1726
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumberPicker;->access$300(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1727
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {p0}, Lcom/color/support/widget/ColorNumberPicker;->access$400(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result p0

    invoke-virtual {v1, v0, v0, v2, p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .line 1758
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1774
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 1785
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$300(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1786
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    .line 1787
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 1786
    invoke-virtual {v0, p0, v4, v5}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1789
    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$300(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->access$302(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    .line 1790
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {p0}, Lcom/color/support/widget/ColorNumberPicker;->access$400(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1776
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$100(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1777
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    .line 1778
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 1777
    invoke-virtual {v0, p0, v4, v5}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1780
    :cond_4
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$100(Lcom/color/support/widget/ColorNumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->access$102(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    .line 1781
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$200(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1760
    :cond_5
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 1767
    :cond_6
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->access$302(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    .line 1768
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {p0}, Lcom/color/support/widget/ColorNumberPicker;->access$400(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1762
    :cond_7
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->access$102(Lcom/color/support/widget/ColorNumberPicker;Z)Z

    .line 1763
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$200(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$PressedStateHelper;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    :goto_0
    return-void
.end method
