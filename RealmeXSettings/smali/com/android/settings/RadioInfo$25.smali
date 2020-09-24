.class final Lcom/android/settings/RadioInfo$25;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1732
    iput-object p1, p0, Lcom/android/settings/RadioInfo$25;->a:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1735
    iget-object p1, p0, Lcom/android/settings/RadioInfo$25;->a:Lcom/android/settings/RadioInfo;

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCbrsDataSwitchState() state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iget-object v0, p1, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 2714
    new-instance v0, Lcom/android/settings/RadioInfo$24;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/RadioInfo$24;-><init>(Lcom/android/settings/RadioInfo;Z)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method
