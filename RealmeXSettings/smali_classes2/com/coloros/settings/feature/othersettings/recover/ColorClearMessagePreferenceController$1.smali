.class final Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorClearMessagePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->access$100(Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
