.class Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$1;
.super Ljava/lang/Object;
.source "PasscodeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->initChallage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$1;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$1;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    iget-object v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mChallenge:J

    return-void
.end method
