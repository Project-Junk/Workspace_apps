.class public Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
.super Ljava/lang/Object;
.source "DcTesterFailBringUpAll.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DcTesterFailBrinupAll"


# instance fields
.field private mActionFailBringUp:Ljava/lang/String;

.field private mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->INTENT_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".action_fail_bringup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register for intent action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DcTesterFailBrinupAll"

    .line 107
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 97
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    return-object v0
.end method
