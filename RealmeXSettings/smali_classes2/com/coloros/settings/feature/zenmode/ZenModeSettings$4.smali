.class final Lcom/coloros/settings/feature/zenmode/ZenModeSettings$4;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 326
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
