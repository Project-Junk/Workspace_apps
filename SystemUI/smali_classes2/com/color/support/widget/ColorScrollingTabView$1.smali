.class Lcom/color/support/widget/ColorScrollingTabView$1;
.super Ljava/lang/Object;
.source "ColorScrollingTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorScrollingTabView;->addTab(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorScrollingTabView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorScrollingTabView;I)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView$1;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    iput p2, p0, Lcom/color/support/widget/ColorScrollingTabView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView$1;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {p1}, Lcom/color/support/widget/ColorScrollingTabView;->access$100(Lcom/color/support/widget/ColorScrollingTabView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView$1;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    iget p0, p0, Lcom/color/support/widget/ColorScrollingTabView$1;->val$position:I

    invoke-static {v0, p0}, Lcom/color/support/widget/ColorScrollingTabView;->access$000(Lcom/color/support/widget/ColorScrollingTabView;I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
