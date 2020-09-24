.class Lcom/coloros/systemui/notification/helper/PrivacyHelper$1;
.super Landroid/database/ContentObserver;
.source "PrivacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/PrivacyHelper;->createSwitchObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
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

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$PrivacyHelper$1()V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->access$200(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->access$000(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)V

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->access$100(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$PrivacyHelper$1$TVPbVUEEa1vAwJN3cgE0l47HCLE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$PrivacyHelper$1$TVPbVUEEa1vAwJN3cgE0l47HCLE;-><init>(Lcom/coloros/systemui/notification/helper/PrivacyHelper$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
