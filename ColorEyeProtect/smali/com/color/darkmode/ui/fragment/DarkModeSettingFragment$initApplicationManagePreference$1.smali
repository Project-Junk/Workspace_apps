.class public final Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->initApplicationManagePreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsChecked(Lcom/color/support/widget/ColorSwitch;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSwitch;->toggle()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setShouldPlaySound(Z)V

    :cond_1
    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const-string v3, "context!!"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->handleAllChecked(ZLjava/util/Set;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$refreshCount(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)V

    return-void
.end method

.method public onIsUnChecked(Lcom/color/support/widget/ColorSwitch;)V
    .locals 3

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcolor/support/v7/app/b$a;

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-direct {v0, v1}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    const v2, 0x7f0f004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const v2, 0x7f0f004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    const v2, 0x7f0f008b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$1;->INSTANCE:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$1;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    const v2, 0x7f0f008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;

    invoke-direct {v2, p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;Lcom/color/support/widget/ColorSwitch;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->show()V

    :cond_5
    return-void
.end method
