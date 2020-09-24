.class Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;
.super Ljava/lang/Object;
.source "FingerprintUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 162
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->val$apps:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "FingerprintUsage"

    const-string p2, "click positive button"

    .line 165
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->val$apps:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0, v0, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    .line 168
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 169
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->access$100(Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;)Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1, v0, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    .line 173
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 174
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage$1;->this$0:Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
