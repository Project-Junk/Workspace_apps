.class Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EuiccPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method

.method private sendPackageChange(Ljava/lang/String;Z)V
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4

    if-eqz p4, :cond_0

    .line 1113
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    const/4 v3, 0x1

    .line 1114
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x1

    .line 1092
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1107
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x1

    .line 1097
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x1

    .line 1102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;->sendPackageChange(Ljava/lang/String;Z)V

    return-void
.end method
