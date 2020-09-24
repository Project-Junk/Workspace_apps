.class public Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;


# direct methods
.method protected constructor <init>(Lcom/color/support/widget/ExpandableRecyclerConnector;)V
    .locals 0

    .line 1183
    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$400(Lcom/color/support/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1188
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$400(Lcom/color/support/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1194
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 1199
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->onItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1204
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$400(Lcom/color/support/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1205
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    .line 1216
    iget-object p3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    const/4 v0, 0x1

    invoke-static {p3, v0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$400(Lcom/color/support/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1217
    iget-object p3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {p3, p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$400(Lcom/color/support/widget/ExpandableRecyclerConnector;ZZ)V

    .line 1211
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemRangeRemoved(II)V

    return-void
.end method
