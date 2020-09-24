.class Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "ColorFingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;
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

    .line 259
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 2

    const-string p1, "FingerprintSettingsFragment"

    const-string p2, "onRemovalError"

    .line 293
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 296
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$302(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Ljava/util/List;)Ljava/util/List;

    .line 297
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$000(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;J)V

    .line 298
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 299
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p2, p1, p3}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$400(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 5

    const-string p1, "FingerprintSettingsFragment"

    const-string p2, "onRemovalSucceeded"

    .line 263
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_4

    .line 266
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 267
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iget-object v1, v1, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    .line 269
    invoke-static {v1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerprintCount(Landroid/content/Context;I)V

    if-eqz v1, :cond_4

    .line 271
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$100(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    move-result-object v2

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3, p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 273
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$100(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;

    move-result-object v2

    if-lez v0, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0xc8

    :goto_1
    invoke-virtual {v2, p1, v3, v4}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$FingerprintHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    const/4 p1, 0x1

    .line 275
    invoke-static {v1, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onDeleteFingerDone(Landroid/content/Context;ZI)V

    if-nez v0, :cond_4

    .line 277
    invoke-static {v1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    .line 281
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->mActivity:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 282
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$200(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings;->getDefaultUnlockWay()I

    move-result p2

    const-string v0, "way_to_unlock_when_screen_off"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method
