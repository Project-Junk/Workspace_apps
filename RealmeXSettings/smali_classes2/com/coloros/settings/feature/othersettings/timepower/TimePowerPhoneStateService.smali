.class public Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;
.super Landroid/app/Service;
.source "TimePowerPhoneStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/lang/Runnable;

.field private c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

.field private d:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->a:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->b:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    .line 118
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;-><init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->d:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Z
    .locals 4

    .line 2080
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->an(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 2081
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 2086
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 2088
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2094
    :cond_2
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "phoneInCall = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ReceiverPhoneStateService"

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->d:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ReceiverPhoneStateService"

    const-string v1, "onDestroy"

    .line 100
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 1106
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    .line 1108
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->al(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->am(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/16 v4, 0x20

    if-eqz v1, :cond_2

    .line 1110
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    invoke-virtual {v0, v1, v4, v3}, Landroid/telephony/ColorOSTelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1111
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->d:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    invoke-virtual {v0, v1, v4, v2}, Landroid/telephony/ColorOSTelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_2

    .line 1113
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->c:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    invoke-virtual {v0, v1, v4, v3}, Landroid/telephony/ColorOSTelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 40
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
