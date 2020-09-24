.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "NotificationDecoratedCustomViewWrapper.java"


# instance fields
.field private mWrappedView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->mWrappedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->mView:Landroid/view/View;

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_id_notification_main_column:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_id_notification_custom_view_index_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->mWrappedView:Landroid/view/View;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->resolveBackgroundColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->mWrappedView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->needsInversion(ILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->mWrappedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->invertViewLuminosity(Landroid/view/View;)V

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method
