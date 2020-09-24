.class final Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;
.super Ljava/lang/Object;
.source "AppManagerFeature.java"

# interfaces
.implements Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/appmanager/AppManagerFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$900(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 899
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    instance-of p2, p2, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    if-eqz p2, :cond_0

    .line 900
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    .line 1145
    iget-object p2, p2, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p2

    add-int/2addr p1, p2

    .line 902
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;IZ)V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0, p1, p3, p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$1000(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Lcom/coloros/settingslib/applications/ApplicationsState$a;ZI)V

    .line 909
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 910
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    if-eqz p1, :cond_0

    .line 911
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    .line 2145
    iget-object p1, p1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p1

    add-int/2addr p2, p1

    .line 913
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method
