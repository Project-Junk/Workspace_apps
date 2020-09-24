.class Lcom/color/support/widget/ExpandableRecyclerConnector$2;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

.field final synthetic val$flatListPos:I


# direct methods
.method constructor <init>(Lcom/color/support/widget/ExpandableRecyclerConnector;I)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$2;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iput p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$2;->val$flatListPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$2;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-static {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$100(Lcom/color/support/widget/ExpandableRecyclerConnector;)Lcom/color/support/widget/ColorExpandableRecyclerView;

    move-result-object v0

    iget p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$2;->val$flatListPos:I

    invoke-virtual {v0, p1, p0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->handleClick(Landroid/view/View;I)Z

    return-void
.end method
