.class Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "WakeupScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenModeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    .line 234
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 239
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->access$300(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->access$102(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;I)I

    return-void
.end method
