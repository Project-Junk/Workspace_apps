.class public Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
.super Ljava/lang/Object;
.source "DcTesterDeactivateAll.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DcTesterDeacativateAll"

.field public static sActionDcTesterDeactivateAll:Ljava/lang/String; = "com.android.internal.telephony.dataconnection.action_deactivate_all"


# instance fields
.field private mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected sIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 72
    sget-boolean p2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p2, :cond_0

    .line 73
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "register for intent action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->log(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->log(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DcTesterDeacativateAll"

    .line 92
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 86
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
