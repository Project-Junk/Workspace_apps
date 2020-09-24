.class public Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsActivity;
.super Lcom/coloros/systemui/common/settings/BaseSettingsActivity;
.source "EnvelopeSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->newInstance()Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsActivity;->switchToFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
