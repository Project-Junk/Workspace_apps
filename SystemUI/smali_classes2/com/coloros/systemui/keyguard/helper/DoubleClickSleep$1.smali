.class Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$1;
.super Landroid/database/ContentObserver;
.source "DoubleClickSleep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$1;->this$0:Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "DoubleClickSleep"

    const-string p2, "onChange in doubleClickSleep settings"

    .line 81
    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$1;->this$0:Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->access$100(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->access$002(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;Z)Z

    return-void
.end method
