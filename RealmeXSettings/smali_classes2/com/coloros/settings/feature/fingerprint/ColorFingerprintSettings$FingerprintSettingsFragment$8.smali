.class Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$8;
.super Ljava/lang/Object;
.source "ColorFingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->showFaceTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$8;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "FingerprintSettingsFragment"

    const-string v0, "onDismiss"

    .line 1221
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
