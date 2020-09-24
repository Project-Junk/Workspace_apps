.class final Lcom/color/darkmode/ui/widget/SecondToolbarBehavior$onStartNestedScroll$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior$onStartNestedScroll$1;->this$0:Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior$onStartNestedScroll$1;->this$0:Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;

    invoke-static {p0}, Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;->access$onListScroll(Lcom/color/darkmode/ui/widget/SecondToolbarBehavior;)V

    return-void
.end method
