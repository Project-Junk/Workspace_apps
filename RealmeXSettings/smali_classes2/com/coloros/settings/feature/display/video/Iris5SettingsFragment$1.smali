.class final Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment$1;
.super Landroid/database/ContentObserver;
.source "Iris5SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment$1;->a:Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment$1;->a:Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment$1;->a:Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->a(Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->a(Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;Z)V

    :cond_0
    return-void
.end method
