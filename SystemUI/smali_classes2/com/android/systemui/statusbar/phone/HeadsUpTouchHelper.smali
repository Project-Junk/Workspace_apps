.class public Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
.super Ljava/lang/Object;
.source "HeadsUpTouchHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HeadsUpTouchHelper"


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

.field private mCollapseSnoozes:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mTouchSlop:F

.field private mTouchingHeadsUpView:Z

.field private mTrackingHeadsUp:Z

.field private mTrackingPointer:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 55
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    return-void
.end method

.method private endMotion()V
    .locals 1

    const/4 v0, -0x1

    .line 196
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    return-void
.end method

.method private setTrackingHeadsUp(Z)V
    .locals 1

    .line 161
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setTrackingHeadsUp(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method public isTrackingHeadsUp()Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    return p0
.end method

.method public notifyFling(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 167
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->snooze()V

    :cond_0
    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 69
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--onInterceptTouchEvent--mTouchingHeadsUpView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "HeadsUpTouchHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 77
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    move v0, v1

    .line 82
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v4, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    const/4 v0, 0x6

    if-eq v3, v0, :cond_3

    goto/16 :goto_1

    .line 111
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 112
    iget v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    if-ne v2, v0, :cond_c

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_4

    move v4, v1

    .line 115
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    .line 116
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 117
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    goto/16 :goto_1

    .line 122
    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    sub-float p1, v0, p1

    .line 123
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v3, :cond_c

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    .line 124
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    .line 125
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_6

    move v1, v4

    .line 126
    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    .line 127
    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 128
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getActualHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 130
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationY()F

    move-result v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    int-to-float p1, p1

    .line 132
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    .line 131
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v2, v0, v4, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startExpandMotion(FFZF)V

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startExpandingFromPeek()V

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->unpinAll(Z)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->clearNotificationEffects()V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    return v4

    .line 146
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v0, :cond_8

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 149
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->shouldSwallowClick(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    return v4

    .line 154
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    goto :goto_1

    .line 86
    :cond_9
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    .line 87
    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 88
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    .line 90
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setmNoticesClick(Z)V

    .line 94
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_b

    .line 95
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 97
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v4

    goto :goto_0

    :cond_a
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setmNoticesClick(Z)V

    goto :goto_1

    :cond_b
    if-nez p1, :cond_c

    .line 100
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_c

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 106
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    :cond_c
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 177
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--onTouchEvent--mTrackingHeadsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "HeadsUpTouchHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 185
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    .line 189
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    :goto_0
    return v0
.end method
