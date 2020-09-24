.class Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$3;
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

    .line 622
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$3;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 625
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$3;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->access$000(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->initChallage(Z)V

    .line 626
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$3;->this$0:Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;

    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment$3;->val$key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;->access$100(Lcom/coloros/settings/feature/fingerprint/PasscodeSettings$PassCodeSettingsFragment;Ljava/lang/String;)Z

    return-void
.end method
