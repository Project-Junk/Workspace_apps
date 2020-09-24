.class final Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$12;
.super Ljava/lang/Object;
.source "ColorScreenLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ZZZI)V
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

    .line 816
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$12;->a:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string p1, "ScreenLockSettings"

    const-string p2, "isFingerprintUnlockEnabled false"

    .line 819
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$12;->a:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    const/16 p2, 0x69

    const-string v0, "close"

    invoke-virtual {p1, p2, v0}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$12;->a:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "close"

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(IZZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method
