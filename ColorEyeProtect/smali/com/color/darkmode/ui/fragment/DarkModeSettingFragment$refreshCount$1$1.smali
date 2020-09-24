.class final Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $allCount:I

.field final synthetic $count:I

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iput p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->$allCount:I

    iput p3, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->$allCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v3, v3, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {v3}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMManagePreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v3, v3, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {v3}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMManagerPreferenceDivider$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->$count:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMManagePreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v3, v3, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0001

    iget v5, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->$count:I

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->$count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resources.getQuantityStr\u2026tatus_text, count, count)"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->setSummaryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMManagePreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    move-result-object v0

    const v3, 0x7f0500cd

    :goto_1
    invoke-virtual {v0, v3}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->setSummaryTextColor(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMManagePreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v3, v3, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v3}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resources.getString(R.st\u2026ge_third_app_to_darkmode)"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->setSummaryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMManagePreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    move-result-object v0

    const v3, 0x7f0500d4

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMManagePreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    move-result-object v0

    iget p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$refreshCount$1$1;->$count:I

    if-lez p0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->setChecked(Z)V

    :cond_3
    return-void
.end method
