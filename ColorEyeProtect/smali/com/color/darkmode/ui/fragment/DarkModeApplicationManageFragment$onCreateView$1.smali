.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "event"

    invoke-static {p2, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-lt p2, p1, :cond_1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMOppoTouchSearchView$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lcom/oppo/support/widget/OppoTouchSearchView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->a()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
