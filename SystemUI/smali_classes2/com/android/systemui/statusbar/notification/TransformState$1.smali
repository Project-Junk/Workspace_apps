.class final Lcom/android/systemui/statusbar/notification/TransformState$1;
.super Ljava/lang/Object;
.source "TransformState.java"

# interfaces
.implements Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/TransformState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClippingStateChanged(Landroid/view/View;Z)V
    .locals 0

    .line 65
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    .line 66
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 70
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldFinish(Landroid/view/View;)Z
    .locals 0

    .line 56
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
