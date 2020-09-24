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
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-static {v0}, Lcom/color/support/widget/ColorListView;->access$000(Lcom/color/support/widget/ColorListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorListView;->setSelection(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/color/support/widget/ColorListView$1;->this$0:Lcom/color/support/widget/ColorListView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getPaddingBottom()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/color/support/widget/ColorListView;->access$100(Lcom/color/support/widget/ColorListView;II)V

    :goto_0
    return-void
.end method
