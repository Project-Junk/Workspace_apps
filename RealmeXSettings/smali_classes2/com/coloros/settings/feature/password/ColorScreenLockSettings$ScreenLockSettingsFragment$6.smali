.class final Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$6;
.super Ljava/lang/Object;
.source "ColorScreenLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$6;->a:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$6;->a:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    .line 272
    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 271
    invoke-static {p1, p2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;IZ)V

    return-void
.end method
