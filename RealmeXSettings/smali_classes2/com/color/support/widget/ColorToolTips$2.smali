.class Lcom/color/support/widget/ColorToolTips$2;
.super Ljava/lang/Object;
.source "ColorToolTips.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorToolTips;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorToolTips;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips$2;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 128
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    iget-object p3, p0, Lcom/color/support/widget/ColorToolTips$2;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {p3}, Lcom/color/support/widget/ColorToolTips;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips$2;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-static {p1}, Lcom/color/support/widget/ColorToolTips;->access$200(Lcom/color/support/widget/ColorToolTips;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips$2;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-static {p1}, Lcom/color/support/widget/ColorToolTips;->access$100(Lcom/color/support/widget/ColorToolTips;)V

    :cond_0
    return-void
.end method
