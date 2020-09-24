.class public interface abstract Lcom/coloros/settings/b;
.super Ljava/lang/Object;
.source "NoSearchMenuPreferenceFragment.java"


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 v0, 0x0

    const-string v1, "need_search_icon_in_action_bar"

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
