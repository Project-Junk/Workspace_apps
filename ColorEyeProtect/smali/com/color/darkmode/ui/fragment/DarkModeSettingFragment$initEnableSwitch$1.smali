.class final Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->initEnableSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $contentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    new-instance v1, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;

    invoke-direct {v1, p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;Z)V

    check-cast v1, Lcom/color/support/widget/c$c;

    invoke-static {v0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$showCheckUseDialog(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Lcom/color/support/widget/c$c;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment$initEnableSwitch$1;->this$0:Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;->access$changeDarkMode(Lcom/color/darkmode/ui/fragment/DarkModeSettingFragment;Landroid/content/Context;Z)V

    const/4 p2, 0x1

    :goto_1
    return p2

    :cond_2
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method
