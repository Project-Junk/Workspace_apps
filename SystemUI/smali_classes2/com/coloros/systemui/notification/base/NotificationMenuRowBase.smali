.class public Lcom/coloros/systemui/notification/base/NotificationMenuRowBase;
.super Ljava/lang/Object;
.source "NotificationMenuRowBase.java"


# instance fields
.field protected mDeleteItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createDeleteItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 4

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/coloros/systemui/notification/view/NotificationDelete;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/view/NotificationDelete;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1105a1

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    const v3, 0x7f0807cb

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v2
.end method
