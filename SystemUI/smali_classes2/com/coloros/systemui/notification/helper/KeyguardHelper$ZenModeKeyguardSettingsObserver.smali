.class Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/KeyguardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenModeKeyguardSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    .line 422
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 427
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$300(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "zen_suppressed_effect_key_gard"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$102(Lcom/coloros/systemui/notification/helper/KeyguardHelper;I)I

    return-void
.end method
