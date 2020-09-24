.class public abstract Lcom/android/settings/sim/SimDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SimDialogFragment.java"

# interfaces
.implements Lcom/android/settings/network/g$a;


# instance fields
.field private a:Lcom/android/settings/network/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method protected static a(II)Landroid/os/Bundle;
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_type"

    .line 40
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title_id"

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public final c()I
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/android/settings/network/g;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/g;-><init>(Landroid/content/Context;Lcom/android/settings/network/g$a;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogFragment;->a:Lcom/android/settings/network/g;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sim/SimDialogActivity;

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1142
    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 1143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1144
    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onPause()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogFragment;->a:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogFragment;->a:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->a()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogFragment;->b()V

    return-void
.end method
