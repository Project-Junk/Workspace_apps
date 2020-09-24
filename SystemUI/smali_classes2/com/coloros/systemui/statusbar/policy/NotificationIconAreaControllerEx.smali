.class public Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;
.super Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.source "NotificationIconAreaControllerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationIconAreaCtlEx"


# instance fields
.field private mChildModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mContext:Landroid/content/Context;

.field private mIsChildrenMode:Z

.field private mIsHeadsUpMode:Z

.field private mLastNotificationShowMode:I

.field private mLastToShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

.field private mNotificationPromptModeObserver:Lcom/coloros/systemui/statusbar/observer/NotificationPromptModeObserver;

.field private mNotificationShowMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastNotificationShowMode:I

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastToShow:Ljava/util/ArrayList;

    .line 43
    new-instance p2, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx$1;-><init>(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;)V

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationPromptModeObserver:Lcom/coloros/systemui/statusbar/observer/NotificationPromptModeObserver;

    .line 53
    new-instance p2, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$ReH1a1HnXouGoLoe7nwAs58qhXM;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$ReH1a1HnXouGoLoe7nwAs58qhXM;-><init>(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;)V

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mChildModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 60
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mContext:Landroid/content/Context;

    .line 61
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationIconArea:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationIconArea:Landroid/view/View;

    const p2, 0x7f0a0406

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationPromptModeObserver:Lcom/coloros/systemui/statusbar/observer/NotificationPromptModeObserver;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/coloros/systemui/statusbar/observer/NotificationPromptModeObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 65
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;->getNotificationPromptModeState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    .line 67
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mIsChildrenMode:Z

    .line 68
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mChildModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->updateStatusBarIcons()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method private updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "ZZZZZZ)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 117
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIconsForLayout : mNotificationShowMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsChildrenMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mIsChildrenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mLastNotificationShowMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastNotificationShowMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",notificationLayoutCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "NotificationIconAreaCtlEx"

    const-string v13, "Statusbar"

    .line 123
    invoke-static {v13, v12, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    const/4 v14, 0x2

    if-eq v14, v0, :cond_20

    iget-boolean v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mIsChildrenMode:Z

    if-nez v0, :cond_20

    iget-boolean v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mIsHeadsUpMode:Z

    if-nez v0, :cond_20

    .line 130
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isVersionSellMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v7, 0x0

    move v5, v7

    move v6, v5

    .line 140
    :goto_0
    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 141
    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_4

    .line 143
    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v14, v4

    move/from16 v4, p5

    move v15, v5

    move/from16 v5, p6

    move/from16 v17, v6

    move/from16 v6, p7

    move v9, v7

    move/from16 v7, p8

    .line 144
    invoke-virtual/range {v0 .. v7}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p1

    .line 146
    invoke-interface {v0, v14}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_5

    .line 148
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 153
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    .line 154
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cntChildren = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", notificationNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v13, v12, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int v5, v15, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v15, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    move v15, v5

    move/from16 v17, v6

    move v9, v7

    :cond_5
    :goto_1
    move v5, v15

    :goto_2
    add-int/lit8 v6, v17, 0x1

    move v7, v9

    const/4 v14, 0x2

    move-object/from16 v9, p2

    goto/16 :goto_0

    :cond_6
    move v15, v5

    move v9, v7

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIconsForLayout: toShow.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",notificationsNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hostLayout.childCOund= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hostLayout.visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v13, v12, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_9

    .line 182
    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    if-nez v0, :cond_7

    .line 183
    new-instance v0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    iget-object v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    :cond_7
    if-ge v15, v1, :cond_8

    .line 186
    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->setVisibility(I)V

    return-void

    :cond_8
    const/16 v1, 0x8

    .line 189
    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    invoke-virtual {v0, v15}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->setText(I)V

    .line 190
    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    invoke-virtual {v0, v9}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->setVisibility(I)V

    move-object/from16 v0, p2

    .line 191
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisibility(I)V

    .line 192
    iget v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    iput v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastNotificationShowMode:I

    return-void

    :cond_9
    move-object/from16 v0, p2

    .line 196
    iget v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastNotificationShowMode:I

    const/4 v3, 0x2

    if-eq v3, v2, :cond_a

    if-ne v1, v2, :cond_b

    .line 198
    :cond_a
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisibility(I)V

    .line 199
    iget-object v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->setVisibility(I)V

    .line 202
    :cond_b
    iget v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    iput v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastNotificationShowMode:I

    if-nez v2, :cond_c

    .line 205
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastToShow:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_c

    iget-object v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastToShow:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "updateIconsForLayout, the same as last time, return"

    .line 208
    invoke-static {v13, v12, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_c
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v9

    .line 219
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_14

    .line 220
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 221
    instance-of v6, v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v6, :cond_d

    goto :goto_7

    .line 224
    :cond_d
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 226
    check-cast v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 227
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    move v7, v9

    move v11, v7

    .line 228
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_10

    .line 229
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 230
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v15

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 231
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-nez v11, :cond_e

    move v11, v1

    goto :goto_5

    :cond_e
    const/4 v11, 0x0

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_10
    :goto_6
    if-eqz v11, :cond_12

    .line 241
    invoke-virtual {v2, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_11

    .line 243
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {v2, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_11
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_12
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .line 252
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 254
    invoke-virtual {v2, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v1, :cond_15

    .line 256
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 259
    :cond_16
    invoke-virtual {v2, v4}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 260
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    .line 262
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_17

    .line 264
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 267
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 270
    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1b

    .line 271
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 273
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    .line 274
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_1a

    if-eqz p5, :cond_18

    .line 276
    iget-object v7, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 283
    :cond_18
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v7

    const-class v9, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v7, v9}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 284
    invoke-virtual {v0, v6, v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 287
    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateIconsForLayout hostLayout do not add stowed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v12, v7}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 294
    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1c

    .line 298
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 300
    :cond_1c
    iget-object v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastToShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 301
    iget-object v2, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastToShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1f

    .line 307
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 308
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v3, v4, :cond_1d

    goto :goto_e

    .line 312
    :cond_1d
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e

    .line 314
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 315
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;I)V

    goto :goto_e

    :cond_1e
    const-string v3, "updateIconsForLayout (hostLayout.indexOfChild==-1)"

    .line 317
    invoke-static {v13, v12, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    const/4 v2, 0x0

    .line 321
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    const/4 v1, 0x0

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    return-void

    :cond_20
    :goto_f
    move-object v0, v9

    const/16 v1, 0x8

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisibility(I)V

    .line 132
    iget-object v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationBadgeView:Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;

    if-eqz v0, :cond_21

    .line 133
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->setVisibility(I)V

    :cond_21
    const/4 v0, 0x2

    .line 135
    iput v0, v8, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mLastNotificationShowMode:I

    return-void
.end method


# virtual methods
.method public getNotificationShowMode()I
    .locals 0

    .line 327
    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationShowMode:I

    return p0
.end method

.method public synthetic lambda$new$0$NotificationIconAreaControllerEx(Z)V
    .locals 0

    .line 53
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->updateStatusBarIconByChildrenMode(Z)V

    return-void
.end method

.method public setNotificationBadgeViewVisible(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mIsHeadsUpMode:Z

    .line 76
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->updateStatusBarIcons()V

    return-void
.end method

.method public updateNotificationIcons()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->updateStatusBarIcons()V

    .line 90
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    return-void
.end method

.method public updateStatusBarIconByChildrenMode(Z)V
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStatusBarIconByChildrenMode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "NotificationIconAreaCtlEx"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mIsChildrenMode:Z

    .line 82
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->updateStatusBarIcons()V

    return-void
.end method

.method public updateStatusBarIcons()V
    .locals 9

    .line 94
    sget-object v1, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$R-2VkWq87fLXIwQyxEtHePSXf-g;->INSTANCE:Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$R-2VkWq87fLXIwQyxEtHePSXf-g;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->mShowLowPriority:Z

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZ)V

    return-void
.end method
