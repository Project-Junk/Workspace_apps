.class Lcom/coloros/systemui/airview/AirViewHelper$3;
.super Landroid/app/IProcessObserver$Stub;
.source "AirViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/airview/AirViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/airview/AirViewHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/airview/AirViewHelper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 74
    iget-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p1}, Lcom/coloros/systemui/airview/AirViewHelper;->access$300(Lcom/coloros/systemui/airview/AirViewHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p2, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p2}, Lcom/coloros/systemui/airview/AirViewHelper;->access$400(Lcom/coloros/systemui/airview/AirViewHelper;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p2}, Lcom/coloros/systemui/airview/AirViewHelper;->access$500(Lcom/coloros/systemui/airview/AirViewHelper;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p1}, Lcom/coloros/systemui/airview/AirViewHelper;->access$100(Lcom/coloros/systemui/airview/AirViewHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p0}, Lcom/coloros/systemui/airview/AirViewHelper;->access$600(Lcom/coloros/systemui/airview/AirViewHelper;)V

    :cond_0
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onProcessDied(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p1}, Lcom/coloros/systemui/airview/AirViewHelper;->access$300(Lcom/coloros/systemui/airview/AirViewHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p2}, Lcom/coloros/systemui/airview/AirViewHelper;->access$700(Lcom/coloros/systemui/airview/AirViewHelper;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "process died, pkg is:"

    const-string v1, "AirViewHelper"

    const-string v2, "AirView"

    if-nez p2, :cond_1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p2, p1}, Lcom/coloros/systemui/airview/AirViewHelper;->access$800(Lcom/coloros/systemui/airview/AirViewHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object p2, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p2}, Lcom/coloros/systemui/airview/AirViewHelper;->access$900(Lcom/coloros/systemui/airview/AirViewHelper;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p2, p1}, Lcom/coloros/systemui/airview/AirViewHelper;->access$800(Lcom/coloros/systemui/airview/AirViewHelper;Ljava/lang/String;)V

    .line 104
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p2, p1}, Lcom/coloros/systemui/airview/AirViewHelper;->access$702(Lcom/coloros/systemui/airview/AirViewHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper$3;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/airview/AirViewHelper;->access$902(Lcom/coloros/systemui/airview/AirViewHelper;J)J

    return-void
.end method
