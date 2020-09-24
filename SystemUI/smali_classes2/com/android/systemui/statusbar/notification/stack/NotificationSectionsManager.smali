.class Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

.field private mGentleHeaderVisible:Z

.field private mInitialized:Z

.field private mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

.field private final mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUseMultipleSections:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Z)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 263
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 67
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 68
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method private adjustGentleHeaderVisibilityAndPosition(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 155
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 156
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-nez v1, :cond_1

    .line 159
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-eqz p1, :cond_5

    .line 160
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 161
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-nez v0, :cond_3

    .line 165
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, -0x1

    if-eq v3, v0, :cond_5

    if-ge v3, p1, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method private getLastHighPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 250
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 251
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    .line 252
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 253
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static synthetic lambda$BXFcLGpgdZnd7PRimoedNDlJa8o(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onClearGentleNotifsClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Lm4LNd4tUWZPNzSmZnkDovE-xCU(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onGentleHeaderClick(Landroid/view/View;)V

    return-void
.end method

.method private onClearGentleNotifsClick(Landroid/view/View;)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 293
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private onGentleHeaderClick(Landroid/view/View;)V
    .locals 4

    .line 273
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 274
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 275
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.notificationmanager"

    const-string v3, "com.coloros.notificationmanager.NotificationCenterActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 279
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 281
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.NOTIFICATION_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/high16 v1, 0x20000000

    invoke-interface {p0, p1, v0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    :goto_0
    return-void
.end method


# virtual methods
.method public beginsSection(Landroid/view/View;)Z
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getGentleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method initialize(Landroid/view/LayoutInflater;)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews(Landroid/view/LayoutInflater;)V

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NotificationSectionsManager already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onUiModeChanged()V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->onUiModeChanged()V

    return-void
.end method

.method reinflateViews(Landroid/view/LayoutInflater;)V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 91
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const v2, 0x7f0d01ff

    .line 95
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 97
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$Lm4LNd4tUWZPNzSmZnkDovE-xCU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$Lm4LNd4tUWZPNzSmZnkDovE-xCU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$BXFcLGpgdZnd7PRimoedNDlJa8o;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$BXFcLGpgdZnd7PRimoedNDlJa8o;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnClearAllClickListener(Landroid/view/View$OnClickListener;)V

    if-eq v0, v1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method setOnClearGentleNotifsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method updateFirstAndLastViewsInSections(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z
    .locals 5

    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    .line 203
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getLastHighPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v3

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 208
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 209
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 210
    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 213
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 214
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 215
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 218
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 219
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 220
    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :goto_0
    if-ne v3, v0, :cond_2

    if-eq p0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 225
    :cond_4
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 226
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return v1
.end method

.method updateSectionBoundaries()V
    .locals 6

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, -0x1

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 135
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 137
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 138
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->adjustGentleHeaderVisibilityAndPosition(I)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x2

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result p0

    .line 148
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setAreThereDismissableGentleNotifs(Z)V

    return-void
.end method
