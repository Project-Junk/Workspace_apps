.class Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$3;
.super Ljava/lang/Object;
.source "FingerprintUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->showPrivacyDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

.field final synthetic val$apps:Z


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;Z)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$3;->val$apps:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 192
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$3;->val$apps:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->access$200(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$3;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->access$300(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method
