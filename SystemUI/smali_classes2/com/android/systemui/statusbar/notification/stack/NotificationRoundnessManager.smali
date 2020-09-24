.class Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
.super Ljava/lang/Object;
.source "NotificationRoundnessManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mAnimatedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mAppearFraction:F

.field private mExpanded:Z

.field private final mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private final mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private mRoundingChangedCallback:Ljava/lang/Runnable;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private final mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private mTrackedAmbient:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/AmbientPulseManager;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 60
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v0, 0x2

    .line 65
    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 66
    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 67
    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 68
    new-array v0, v0, [Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/AmbientPulseManager;->addListener(Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;)V

    return-void
.end method

.method private getRoundness(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)F
    .locals 3

    .line 149
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoundness--key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isPinned:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isHeadsUpAnimatingAway:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isHeadsUpAnimatingAway()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mExpanded:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    .line 155
    invoke-static {v1, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundnessCustom(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)F

    move-result p0

    return p0

    .line 167
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    return v1

    .line 173
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    return v1

    .line 176
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_6

    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_6

    return v1

    .line 181
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedAmbient:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-ne p1, p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method private getRoundnessCustom(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)F
    .locals 3

    .line 212
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isPinned()Z

    move-result v0

    const v1, 0x40554fdf    # 3.333f

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    if-nez v0, :cond_1

    return v1

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInFirstContainChildSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_3

    .line 217
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInLastContainChildSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    :cond_3
    return v1

    .line 221
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_5

    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_5

    return v0

    .line 226
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedAmbient:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-ne p1, p0, :cond_6

    :cond_6
    return v0
.end method

.method private handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .locals 9

    .line 294
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v4, p1, v2

    if-eqz p3, :cond_0

    .line 296
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 299
    array-length v6, p2

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, p2, v7

    if-ne v8, v4, :cond_1

    move v6, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_3
    if-nez v6, :cond_4

    .line 308
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_4

    :cond_3
    move v3, v1

    .line 307
    :goto_4
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move v3, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method private handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .locals 9

    .line 261
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v4, p2, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 265
    array-length v6, p1

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, p1, v7

    if-eqz p3, :cond_0

    .line 267
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v8

    goto :goto_2

    .line 268
    :cond_0
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v8

    :goto_2
    if-ne v8, v4, :cond_3

    .line 271
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isFirstInSection()Z

    move-result v6

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v7

    if-ne v6, v7, :cond_2

    .line 273
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isLastInSection()Z

    move-result v6

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v7

    if-eq v6, v7, :cond_1

    goto :goto_3

    :cond_1
    move v7, v1

    move v6, v5

    goto :goto_5

    :cond_2
    :goto_3
    move v6, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_4
    move v7, v6

    :goto_5
    if-eqz v6, :cond_5

    if-eqz v7, :cond_7

    .line 282
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_6

    .line 283
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isShown()Z

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    :cond_6
    move v3, v5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v3
.end method

.method private isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 121
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 122
    aget-object v4, v3, v1

    if-ne p1, v4, :cond_2

    if-nez p2, :cond_0

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 125
    :cond_2
    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private isLastInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_4

    .line 135
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v5, v4, v0

    if-ne p1, v5, :cond_2

    if-nez p2, :cond_1

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    .line 138
    :cond_2
    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z
    .locals 4

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)F

    move-result v1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)F

    move-result v3

    .line 109
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTopRoundness(FZ)Z

    move-result v1

    .line 110
    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBottomRoundness(FZ)Z

    move-result p2

    .line 111
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v3

    .line 112
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result p0

    .line 113
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFirstInSection(Z)V

    .line 114
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setLastInSection(Z)V

    if-nez v3, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public isFirstInFirstContainChildSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 192
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 193
    aget-object p0, v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-ne p1, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_2
    return v0
.end method

.method public isLastInLastContainChildSection(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 204
    aget-object p0, v2, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-ne p1, p0, :cond_3

    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method public onAmbientStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedAmbient:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    goto :goto_0

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedAmbient:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-ne p2, p1, :cond_1

    const/4 p2, 0x0

    .line 93
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedAmbient:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    return-void
.end method

.method public onHeadsupAnimatingAwayChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 0

    const/4 p2, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    return-void
.end method

.method public setAnimatedChildren(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;)V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    return-void
.end method

.method public setExpanded(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 234
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    .line 235
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    .line 236
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_1

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    :cond_1
    return-void
.end method

.method public setOnRoundingChangedCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method public updateRoundedChildren([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 246
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    aput-object v2, v3, v1

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v1

    or-int/2addr v1, v0

    .line 250
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 251
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 254
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
