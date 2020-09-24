.class Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarrierServicePackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$1;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    return-void
.end method

.method private evaluateBinding(Ljava/lang/String;Z)V
    .locals 8

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$200(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 369
    invoke-virtual {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " changed and corresponds to a phone. Rebinding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    :cond_0
    if-eqz v4, :cond_1

    if-eqz v5, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    const/4 v4, 0x1

    .line 380
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    .line 382
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->rebind()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4

    if-eqz p4, :cond_0

    .line 360
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    const/4 v3, 0x1

    .line 361
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x1

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x1

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x1

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    return-void
.end method
