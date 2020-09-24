.class final Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "PrivacySettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/PrivacySettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;B)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;-><init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oppo.intent.action.FINISH_PRIVACY_SETTINGS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p2, 0x0

    .line 228
    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
