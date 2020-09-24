.class final Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "state"

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "PowerOffPromptActivity"

    const-string p2, "EXTRA_STATE_IDLE cancel timer"

    .line 62
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->a(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->finish()V

    :cond_1
    return-void
.end method
