.class final Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenReminderPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->access$000(Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->access$000(Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
