.class final Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/support/widget/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $open:Z

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;

    iput-boolean p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->$open:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(IZ)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;

    iget-object v0, v0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->$contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeSwitchOpenNeverHint(Landroid/content/ContentResolver;Z)Z

    :cond_1
    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;

    iget-object p1, p1, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMEnabledPreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->c(Z)V

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;

    iget-object p1, p1, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    iget-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;

    iget-object p2, p2, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {p2}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->$open:Z

    invoke-static {p1, p2, v0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$changeDarkMode(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;

    iget-object p1, p1, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-static {p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$getMEnabledPreference$p(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    iget-boolean p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;->$open:Z

    invoke-virtual {p1, p0}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    :goto_0
    return-void
.end method
