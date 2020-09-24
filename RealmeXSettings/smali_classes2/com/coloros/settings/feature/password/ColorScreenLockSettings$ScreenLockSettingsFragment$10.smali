.class final Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$10;
.super Ljava/lang/Object;
.source "ColorScreenLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Z)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$10;->b:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 777
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$10;->b:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    iget-boolean p2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$10;->a:Z

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;Z)V

    return-void
.end method
