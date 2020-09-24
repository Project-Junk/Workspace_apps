.class Lcom/coloros/systemui/airview/AirViewHelper$2;
.super Ljava/lang/Object;
.source "AirViewHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 54
    iput-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper$2;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "AirView"

    const-string v0, "AirViewHelper"

    const-string v1, "onServiceConnected"

    .line 57
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/airview/AirViewHelper$2;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/airview/AirViewHelper;->access$102(Lcom/coloros/systemui/airview/AirViewHelper;Z)Z

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper$2;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-static {p2}, Lcom/coloros/airview/IAirViewProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/airview/IAirViewProxy;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/airview/AirViewHelper;->access$202(Lcom/coloros/systemui/airview/AirViewHelper;Lcom/coloros/airview/IAirViewProxy;)Lcom/coloros/airview/IAirViewProxy;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "AirView"

    const-string v0, "AirViewHelper"

    const-string v1, "onServiceDisconnected"

    .line 64
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewHelper$2;->this$0:Lcom/coloros/systemui/airview/AirViewHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/airview/AirViewHelper;->access$102(Lcom/coloros/systemui/airview/AirViewHelper;Z)Z

    return-void
.end method
