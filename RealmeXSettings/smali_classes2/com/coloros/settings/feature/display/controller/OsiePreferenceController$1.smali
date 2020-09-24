.class final Lcom/coloros/settings/feature/display/controller/OsiePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "OsiePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->access$000(Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "osie_iris5_switch"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result p1

    if-eq p1, v0, :cond_1

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->access$100(Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;)Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    return-void

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->access$100(Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;)Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    move-result-object p1

    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    return-void
.end method
