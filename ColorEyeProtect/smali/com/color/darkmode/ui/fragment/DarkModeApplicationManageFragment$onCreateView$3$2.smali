.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMLoadingLayout$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMListLayout$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMToolbar$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lcolor/support/v7/widget/Toolbar;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$inflateMenu(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lcolor/support/v7/widget/Toolbar;)V

    return-void
.end method
