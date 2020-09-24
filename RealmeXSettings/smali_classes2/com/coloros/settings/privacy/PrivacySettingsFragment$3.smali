.class final Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;
.super Ljava/lang/Object;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Lcom/coloros/settings/privacy/SafeQuestionActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/PrivacySettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/coloros/settings/privacy/PrivacySettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;[B)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;->b:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    iput-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 1

    .line 365
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "showInputDialog "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PrivacySettingsFragment"

    invoke-static {p4, p3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;->b:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->b(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/privacy/a/g;

    move-result-object p1

    iget-object p3, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;->a:[B

    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;->b:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    .line 368
    invoke-static {v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->b(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/privacy/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    iget v0, v0, Lcom/coloros/settings/privacy/a/g$d;->a:I

    .line 367
    invoke-virtual {p1, p3, v0, p2}, Lcom/coloros/settings/privacy/a/g;->c([BILjava/lang/String;)Z

    move-result p1

    .line 369
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "modifyEmailByChallenge result : "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;->b:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-static {p2}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->c(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;->b:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-static {p3}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->b(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/privacy/a/g;

    move-result-object p4

    invoke-virtual {p4}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p4

    iget-object p4, p4, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const p4, 0x7f1210f5

    goto :goto_0

    :cond_0
    const p4, 0x7f1210f4

    :goto_0
    invoke-virtual {p3, p4}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 373
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;->b:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "20012"

    const-string p4, "pw_privacy_email"

    invoke-static {p1, p3, p4, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
