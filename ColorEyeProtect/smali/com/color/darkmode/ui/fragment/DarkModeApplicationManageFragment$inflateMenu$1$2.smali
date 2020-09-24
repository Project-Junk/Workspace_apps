.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$handleAllChecked(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Z)V

    return-void
.end method
