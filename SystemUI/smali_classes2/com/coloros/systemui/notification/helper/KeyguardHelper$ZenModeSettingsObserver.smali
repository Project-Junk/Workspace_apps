.class Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/KeyguardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenModeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    .line 410
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 415
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$300(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$002(Lcom/coloros/systemui/notification/helper/KeyguardHelper;I)I

    return-void
.end method
