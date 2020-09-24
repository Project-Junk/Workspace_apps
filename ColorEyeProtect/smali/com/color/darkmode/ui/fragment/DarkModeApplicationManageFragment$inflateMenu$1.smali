.class final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->inflateMenu(Lcolor/support/v7/widget/Toolbar;)V
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

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f08009a

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-static {p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$getMOpenCount$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)I

    move-result p1

    if-gtz p1, :cond_6

    new-instance p1, Lcolor/support/v7/app/b$a;

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    invoke-direct {p1, v0}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const v1, 0x7f0f004c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1$1;->INSTANCE:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1$1;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    const v1, 0x7f0f008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1$2;

    invoke-direct {v1, p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1$2;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->show()V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->access$handleAllChecked(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Z)V

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
