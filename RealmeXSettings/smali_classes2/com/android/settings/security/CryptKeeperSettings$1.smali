.class final Lcom/android/settings/security/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/security/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/CryptKeeperSettings;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->a:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    const-string v0, "level"

    .line 69
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "plugged"

    .line 70
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "invalid_charger"

    .line 71
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v2, 0x50

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, p1

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->a:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v1}, Lcom/android/settings/security/CryptKeeperSettings;->a(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v3, p1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->a:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v1}, Lcom/android/settings/security/CryptKeeperSettings;->b(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_3

    :cond_3
    move p2, p1

    :goto_3
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p2, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->a:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {p2}, Lcom/android/settings/security/CryptKeeperSettings;->c(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object p2

    if-eqz v0, :cond_4

    move p1, v2

    :cond_4
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
