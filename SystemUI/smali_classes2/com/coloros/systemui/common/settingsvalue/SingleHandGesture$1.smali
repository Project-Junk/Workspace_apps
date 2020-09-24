.class Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$1;
.super Landroid/database/ContentObserver;
.source "SingleHandGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;Landroid/os/Handler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$1;->this$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$1;->this$0:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    invoke-static {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->access$100(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "singlehand_enable_switch_app_key"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->access$002(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;Z)Z

    return-void
.end method
