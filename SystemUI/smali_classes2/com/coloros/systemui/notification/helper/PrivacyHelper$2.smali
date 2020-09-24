.class Lcom/coloros/systemui/notification/helper/PrivacyHelper$2;
.super Landroid/database/ContentObserver;
.source "PrivacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/PrivacyHelper;->createPackagesObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/PrivacyHelper;Landroid/os/Handler;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$PrivacyHelper$2()V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->access$200(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->access$300(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)V

    .line 113
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->access$100(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/coloros/systemui/notification/helper/-$$Lambda$PrivacyHelper$2$0jOktnz7NFJGvUvaeDluZ2qdg4A;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$PrivacyHelper$2$0jOktnz7NFJGvUvaeDluZ2qdg4A;-><init>(Lcom/coloros/systemui/notification/helper/PrivacyHelper$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
