.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->$switchPreference:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    iget-boolean v1, v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->$isCheck:Z

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    iget-boolean v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->$isCheck:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMOpenCount$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$setMOpenCount$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMOpenCount$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3$invokeSuspend$$inlined$forEach$lambda$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMToolbar$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lcolor/support/v7/widget/Toolbar;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$inflateMenu(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lcolor/support/v7/widget/Toolbar;)V

    return-void
.end method
