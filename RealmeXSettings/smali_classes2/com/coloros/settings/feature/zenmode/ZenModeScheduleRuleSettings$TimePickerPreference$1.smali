.class final Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;

.field final synthetic b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$1;->a:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 320
    new-instance p1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    iput-object v0, p1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 322
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$1;->a:Landroidx/fragment/app/FragmentManager;

    const-class v1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
