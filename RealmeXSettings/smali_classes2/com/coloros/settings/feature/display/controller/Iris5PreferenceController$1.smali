.class final Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController$1;
.super Landroid/database/ContentObserver;
.source "Iris5PreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->access$100(Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;)Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;->access$000(Lcom/coloros/settings/feature/display/controller/Iris5PreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    return-void
.end method
