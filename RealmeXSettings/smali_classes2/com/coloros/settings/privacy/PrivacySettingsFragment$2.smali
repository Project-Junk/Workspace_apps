.class final Lcom/coloros/settings/privacy/PrivacySettingsFragment$2;
.super Ljava/lang/Object;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/PrivacySettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$2;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 348
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oppo.settings.privacy.confirm"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "only_privacy_confirm"

    const/4 v0, 0x1

    .line 349
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$2;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-virtual {p2}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$2;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
