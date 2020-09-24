.class final Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->onIsUnChecked(Lcom/color/support/widget/ColorSwitch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $switch:Lcom/color/support/widget/ColorSwitch;

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;Lcom/color/support/widget/ColorSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;->$switch:Lcom/color/support/widget/ColorSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;->$switch:Lcom/color/support/widget/ColorSwitch;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSwitch;->toggle()V

    :cond_0
    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;->$switch:Lcom/color/support/widget/ColorSwitch;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorSwitch;->setShouldPlaySound(Z)V

    :cond_1
    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;

    iget-object v1, v1, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const-string v2, "context!!"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->handleAllChecked(ZLjava/util/Set;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1$onIsUnChecked$2;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initApplicationManagePreference$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$refreshCount(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)V

    return-void
.end method
