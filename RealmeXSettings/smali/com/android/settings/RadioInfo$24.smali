.class final Lcom/android/settings/RadioInfo$24;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Z)V
    .locals 0

    .line 1714
    iput-object p1, p0, Lcom/android/settings/RadioInfo$24;->b:Lcom/android/settings/RadioInfo;

    iput-boolean p2, p0, Lcom/android/settings/RadioInfo$24;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1716
    iget-object v0, p0, Lcom/android/settings/RadioInfo$24;->b:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->l(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo$24;->a:Z

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setOpportunisticNetworkState(Z)Z

    .line 1717
    iget-object v0, p0, Lcom/android/settings/RadioInfo$24;->b:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->E(Lcom/android/settings/RadioInfo;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$24;->b:Lcom/android/settings/RadioInfo;

    invoke-virtual {v1}, Lcom/android/settings/RadioInfo;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
