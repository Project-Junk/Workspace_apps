.class Lcom/color/support/widget/slideselect/ColorSlideSelectView$1;
.super Ljava/lang/Object;
.source "ColorSlideSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/slideselect/ColorSlideSelectView;->setClickView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$1;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$1;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setTriggerSource(I)V

    .line 231
    iget-object p0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$1;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$100(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V

    return-void
.end method
