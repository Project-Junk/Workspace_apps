.class Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;
.super Ljava/lang/Object;
.source "FullScreenBannerHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 144
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$100(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$202(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$102(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;I)I

    .line 147
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$300(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$400(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)V

    :cond_0
    return-void
.end method
