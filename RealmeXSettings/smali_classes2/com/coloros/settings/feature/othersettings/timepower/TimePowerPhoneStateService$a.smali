.class final Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;
.super Landroid/telephony/PhoneStateListener;
.source "TimePowerPhoneStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiverPhoneStateService onCallStateChanged state="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiverPhoneStateService"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->c(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->b(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->c(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->b(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method
