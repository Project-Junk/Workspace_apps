.class Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;
.super Ljava/lang/Object;
.source "PasscodeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->showDeleteFingerprintsDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 616
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->access$000(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->initChallage(Z)V

    .line 617
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;->val$key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->access$100(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;Ljava/lang/String;)Z

    .line 618
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oppo.intent.action.DELETE_FINGERPRINTS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    iget-object p2, p2, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
