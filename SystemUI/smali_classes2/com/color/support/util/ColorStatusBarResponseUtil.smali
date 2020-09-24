.class public Lcom/color/support/util/ColorStatusBarResponseUtil;
.super Ljava/lang/Object;
.source "ColorStatusBarResponseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mIsRegistered:Z

.field private mStatusBarClickListener:Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;

.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ColorStatusBarResponseUtil"

    .line 30
    iput-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->TAG:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/util/ColorStatusBarResponseUtil;)Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mStatusBarClickListener:Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;

    return-object p0
.end method

.method private initReceiver()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/color/support/util/ColorStatusBarResponseUtil$1;

    invoke-direct {v0, p0}, Lcom/color/support/util/ColorStatusBarResponseUtil$1;-><init>(Lcom/color/support/util/ColorStatusBarResponseUtil;)V

    iput-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.color.clicktop"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mIsRegistered:Z

    .line 70
    iget-object v1, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mIsRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mIsRegistered:Z

    .line 81
    iget-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/color/support/util/ColorStatusBarResponseUtil;->initReceiver()V

    return-void
.end method

.method public setStatusBarClickListener(Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/color/support/util/ColorStatusBarResponseUtil;->mStatusBarClickListener:Lcom/color/support/util/ColorStatusBarResponseUtil$StatusBarClickListener;

    return-void
.end method
