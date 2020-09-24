.class Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SecondToolbarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior$1;->this$0:Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior$1;->this$0:Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;

    invoke-static {p0}, Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;->access$000(Lcom/coloros/systemui/common/settings/others/SecondToolbarBehavior;)V

    return-void
.end method
