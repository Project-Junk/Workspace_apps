.class Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "TabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/TabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/design/widget/TabLayoutMediator;


# direct methods
.method constructor <init>(Lcolor/support/design/widget/TabLayoutMediator;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/TabLayoutMediator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 318
    iget-object p0, p0, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/TabLayoutMediator;

    invoke-virtual {p0}, Lcolor/support/design/widget/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 323
    iget-object p0, p0, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/TabLayoutMediator;

    invoke-virtual {p0}, Lcolor/support/design/widget/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 328
    iget-object p0, p0, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/TabLayoutMediator;

    invoke-virtual {p0}, Lcolor/support/design/widget/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 333
    iget-object p0, p0, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/TabLayoutMediator;

    invoke-virtual {p0}, Lcolor/support/design/widget/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 343
    iget-object p0, p0, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/TabLayoutMediator;

    invoke-virtual {p0}, Lcolor/support/design/widget/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcolor/support/design/widget/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcolor/support/design/widget/TabLayoutMediator;

    invoke-virtual {p0}, Lcolor/support/design/widget/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method
