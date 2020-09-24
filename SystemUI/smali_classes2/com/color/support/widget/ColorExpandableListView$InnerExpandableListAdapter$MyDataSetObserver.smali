.class public Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ColorExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;


# direct methods
.method protected constructor <init>(Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;->this$0:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
