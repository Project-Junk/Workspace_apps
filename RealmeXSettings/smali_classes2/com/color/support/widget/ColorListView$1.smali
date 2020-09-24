.class Lcom/color/support/widget/ColorListView$1;
.super Ljava/lang/Object;
.source "ColorListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorListView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorListView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-static {v0}, Lcom/color/support/widget/ColorListView;->access$000(Lcom/color/support/widget/ColorListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorListView;->setSelection(I)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorListView;->getPaddingBottom()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/color/support/widget/ColorListView;->access$100(Lcom/color/support/widget/ColorListView;II)V

    return-void
.end method
