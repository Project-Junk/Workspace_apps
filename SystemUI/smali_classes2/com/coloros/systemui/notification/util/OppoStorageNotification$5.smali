.class Lcom/coloros/systemui/notification/util/OppoStorageNotification$5;
.super Landroid/database/ContentObserver;
.source "OppoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/util/OppoStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/Handler;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$5;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$5;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1400(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Common"

    const-string v0, "OppoStorageNotification"

    const-string v1, "OtgEnableObserver receive disable."

    .line 211
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$5;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1500(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)V

    :cond_0
    return-void
.end method
