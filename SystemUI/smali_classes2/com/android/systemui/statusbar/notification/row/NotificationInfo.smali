.class public Lcom/android/systemui/statusbar/notification/row/NotificationInfo;
.super Lcom/coloros/systemui/notification/base/NotificationInfoBase;
.source "NotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$AlertingBehavior;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$NotificationInfoAction;
    }
.end annotation


# static fields
.field public static final ACTION_ALERT:I = 0x5

.field static final ACTION_BLOCK:I = 0x3

.field public static final ACTION_DELIVER_SILENTLY:I = 0x4

.field public static final ACTION_NONE:I = 0x0

.field static final ACTION_TOGGLE_SILENT:I = 0x2

.field static final ACTION_UNDO:I = 0x1

.field private static final BEHAVIOR_ALERTING:I = 0x0

.field private static final BEHAVIOR_SILENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InfoGuts"


# instance fields
.field private SPLITER:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field private mChannelImportanceKey:Ljava/lang/String;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

.field private mChosenImportance:Ljava/lang/Integer;

.field private mCurrentImportance:I

.field private mDelegatePkg:Ljava/lang/String;

.field public mExitReason:Ljava/lang/String;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsDeviceProvisioned:Z

.field private mIsForBlockingHelper:Z

.field private mIsNonblockable:Z

.field private mIsSingleDefaultChannel:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNumUniqueChannelsInRow:I

.field private mOnAlert:Landroid/view/View$OnClickListener;

.field private mOnDeliverSilently:Landroid/view/View$OnClickListener;

.field private mOnDismissSettings:Landroid/view/View$OnClickListener;

.field private mOnKeepShowing:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field private mOnSilent:Landroid/view/View$OnClickListener;

.field private mOnUndo:Landroid/view/View$OnClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mPkgIcon:Landroid/graphics/drawable/Drawable;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPresentingChannelEditorDialog:Z

.field private mPressedApply:Z

.field private mPriorityDescriptionView:Landroid/widget/TextView;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSilentDescriptionView:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field private mStartingChannelImportance:I

.field private mUniqueChannelsInRow:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mWasShownHighPriority:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    const-string p1, "---"

    .line 170
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->SPLITER:Ljava/lang/String;

    const-string p1, "blocking_helper_dismissed"

    .line 181
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 185
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$-lxdNUTZhRsTq1qLdFuCftTaKsI;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$-lxdNUTZhRsTq1qLdFuCftTaKsI;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAlert:Landroid/view/View$OnClickListener;

    .line 192
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$x1Q8n0IIdzsrzqhyaxjftYvWg5M;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$x1Q8n0IIdzsrzqhyaxjftYvWg5M;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSilent:Landroid/view/View$OnClickListener;

    .line 199
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$p3qjyEUB89vA_NRs8XRVogtSM4k;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$p3qjyEUB89vA_NRs8XRVogtSM4k;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Landroid/view/View$OnClickListener;

    .line 209
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$j11VBERw7GgslLu77BlqWodFHxk;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$j11VBERw7GgslLu77BlqWodFHxk;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnKeepShowing:Landroid/view/View$OnClickListener;

    .line 219
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$QY1Am5dutJVQ0eHq5s0Z3dSQLu8;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$QY1Am5dutJVQ0eHq5s0Z3dSQLu8;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDeliverSilently:Landroid/view/View$OnClickListener;

    .line 242
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$kcLdDg1SWpjkhvCX9FbMHOcKdX8;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$kcLdDg1SWpjkhvCX9FbMHOcKdX8;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private applyAlertingBehavior(IZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 671
    new-instance p2, Landroid/transition/TransitionSet;

    invoke-direct {p2}, Landroid/transition/TransitionSet;-><init>()V

    .line 672
    invoke-virtual {p2, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 673
    new-instance v2, Landroid/transition/Fade;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p2, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    .line 674
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3, v0}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v4, 0x96

    .line 677
    invoke-virtual {v3, v4, v5}, Landroid/transition/Fade;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 678
    invoke-virtual {v3, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 679
    invoke-virtual {v3, v4}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v3

    .line 675
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v2, 0x15e

    .line 680
    invoke-virtual {p2, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 681
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 682
    invoke-static {p0, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    const p2, 0x7f0a006b

    .line 685
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a0530

    .line 686
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    .line 699
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$JpCUeqH4NTR-eIw4dQ3BiR4iSog;

    invoke-direct {v3, p2, v2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$JpCUeqH4NTR-eIw4dQ3BiR4iSog;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 707
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized alerting behavior: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 690
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$z1_znMHrt0xHowqdvbrSsphINf0;

    invoke-direct {v3, p2, v2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$z1_znMHrt0xHowqdvbrSsphINf0;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->post(Ljava/lang/Runnable;)Z

    .line 710
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eq p2, p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    const p1, 0x7f0a0219

    .line 711
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const p1, 0x7f11039c

    goto :goto_3

    :cond_5
    const p1, 0x7f110396

    .line 712
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private bindBlockingHelper()V
    .locals 4

    const v0, 0x7f0a02d6

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a02d7

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a0105

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a05fc

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0107

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a02e7

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnKeepShowing:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ea

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 415
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDeliverSilently:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindChannelDetails()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindName()V

    .line 563
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindGroupCustom()V

    goto :goto_0

    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindGroup()V

    :goto_0
    return-void
.end method

.method private bindDelegate()V
    .locals 3

    const v0, 0x7f0a01e7

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0457

    .line 582
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 585
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mDelegatePkg:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 587
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 590
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindGroup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 601
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 600
    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0a0280

    .line 606
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 611
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private bindHeader()V
    .locals 7

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, v2, v0}, Lcom/coloros/systemui/notification/util/NotificationUtil;->loadHeaderAppName(Landroid/service/notification/StatusBarNotification;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3, v0}, Lcom/coloros/systemui/notification/util/NotificationUtil;->loadHeaderNotificationIcon(Landroid/service/notification/StatusBarNotification;Landroid/content/pm/PackageManager;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    const v0, 0x7f0a0458

    .line 495
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0459

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindDelegate()V

    const v0, 0x7f0a00c2

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 503
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 505
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 503
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 506
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 507
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 508
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 509
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$tDyIQiSMKPJwexxQ_nMHuNF9Llk;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$tDyIQiSMKPJwexxQ_nMHuNF9Llk;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 513
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a02d0

    .line 517
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private bindInlineControls()V
    .locals 9

    const v0, 0x7f0a02d6

    .line 419
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0105

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a02d7

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    const v3, 0x7f0a05d7

    const v4, 0x7f0a0219

    const/4 v5, 0x1

    const v6, 0x7f0a02dd

    const v7, 0x7f0a03ea

    const v8, 0x7f0a03ec

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f110396

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 433
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 434
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    if-le v0, v5, :cond_2

    .line 435
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getTurnOffNotificationsClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    if-nez v3, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 450
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0530

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a006b

    .line 454
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 455
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSilent:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAlert:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    xor-int/2addr v0, v5

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    return-void
.end method

.method private bindName()V
    .locals 3

    const v0, 0x7f0a0158

    .line 572
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 573
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    .line 574
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 926
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 927
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 928
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000

    .line 929
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 933
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 937
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 939
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "android.intent.extra.NOTIFICATION_ID"

    .line 941
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.NOTIFICATION_TAG"

    .line 942
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 1089
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/16 v0, 0x655

    if-nez p0, :cond_0

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    goto :goto_0

    .line 1090
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTurnOffNotificationsClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 542
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$lHPMwwhdR5jQxtA0fAOND0eRPUs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$lHPMwwhdR5jQxtA0fAOND0eRPUs;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    return-object v0
.end method

.method private handleSaveImportance(II)V
    .locals 1

    .line 225
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;II)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    if-eqz p1, :cond_0

    .line 236
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private importanceChangeLogMaker()Landroid/metrics/LogMaker;
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x4

    .line 1102
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$applyAlertingBehavior$11(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 693
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x0

    .line 694
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method static synthetic lambda$applyAlertingBehavior$12(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 702
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x1

    .line 703
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private notificationControlsLogMaker()Landroid/metrics/LogMaker;
    .locals 2

    .line 1112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x1

    .line 1113
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    .line 1114
    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private queryPreviousImportanceIfExist(Ljava/lang/String;)I
    .locals 2

    .line 761
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x3

    if-nez p0, :cond_3

    .line 762
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getSaveChannelImportanceMap()Ljava/util/HashMap;

    move-result-object p0

    .line 763
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 766
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 770
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method private saveImportance()V
    .locals 2

    .line 624
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const-string v1, "blocking_helper_stop_notifications"

    if-eq v0, v1, :cond_2

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 627
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 629
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->updateImportance()V

    :cond_2
    return-void
.end method

.method private saveImportanceAndExitReason(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/android/systemui/statusbar/notification/row/NotificationInfo$NotificationInfoAction;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const-string p1, "blocking_helper_notif_sort"

    .line 749
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 750
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    goto :goto_1

    .line 754
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p1, "blocking_helper_stop_notifications"

    .line 745
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x0

    .line 746
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const-string p1, "blocking_helper_toggle_silent"

    .line 735
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 741
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelImportanceKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->queryPreviousImportanceIfExist(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    const-string p1, "blocking_helper_deliver_silently"

    .line 721
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 722
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 727
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mCurrentImportance:I

    .line 728
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getSaveChannelImportanceMap()Ljava/util/HashMap;

    move-result-object p1

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelImportanceKey:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mCurrentImportance:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 718
    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    :goto_1
    return-void
.end method

.method private updateImportance()V
    .locals 9

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->importanceChangeLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 650
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-nez v1, :cond_2

    .line 651
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_2

    .line 652
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 653
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 654
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :cond_2
    move v7, v0

    .line 660
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 661
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;II)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->temporarilyAllowReordering()V

    :cond_4
    return-void
.end method


# virtual methods
.method bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;ZZIZ)V
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;",
            "ZZIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v14, p13

    move/from16 v15, p14

    .line 307
    invoke-virtual/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;ZZZIZ)V

    return-void
.end method

.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;ZZZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;",
            "ZZZIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 332
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 333
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 334
    const-class p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 335
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 336
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    .line 337
    invoke-interface {p6}, Ljava/util/Set;->size()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 338
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 339
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 340
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

    .line 341
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 342
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    .line 343
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 344
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 349
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 351
    iput-boolean p15, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    .line 352
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    .line 353
    iput-boolean p13, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    .line 354
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 355
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mDelegatePkg:Ljava/lang/String;

    .line 356
    iput-boolean p11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsDeviceProvisioned:Z

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->SPLITER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->SPLITER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelImportanceKey:Ljava/lang/String;

    .line 362
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    const/4 p3, 0x0

    invoke-interface {p1, p4, p2, p3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p1

    .line 364
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    if-eqz p2, :cond_3

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 368
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 369
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p5, "miscellaneous"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-ne p1, p4, :cond_0

    move p3, p4

    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindHeader()V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindChannelDetails()V

    .line 377
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz p1, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindBlockingHelper()V

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 385
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    iget p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Landroid/view/View$OnClickListener;

    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-boolean p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    move-object p2, p0

    move-object p9, p0

    invoke-virtual/range {p2 .. p9}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindInlineControlsCustom(ZILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;ZLcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    goto :goto_0

    .line 387
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindInlineControls()V

    .line 392
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    .line 365
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bindNotification requires at least one channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method closeControls(Landroid/view/View;Z)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    .line 957
    new-array v1, v0, [I

    .line 958
    new-array v2, v0, [I

    .line 959
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getLocationOnScreen([I)V

    .line 960
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 961
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 963
    aget v4, v2, v0

    aget v5, v1, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v3, 0x1

    .line 964
    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 965
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, v4, v2, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method public getActualHeight()I
    .locals 0

    .line 1030
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 528
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 530
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$0-pyRe_YAFdEij18HwbLfjxZpe4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$0-pyRe_YAFdEij18HwbLfjxZpe4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 2

    .line 1006
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz p2, :cond_0

    .line 1007
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    const/4 v1, 0x0

    .line 1009
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->setOnFinishListener(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V

    .line 1010
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1016
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportance()V

    .line 1020
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const-string p2, "blocking_helper_notif_sort"

    if-ne p1, p2, :cond_2

    .line 1021
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->toggleStowState(Landroid/service/notification/StatusBarNotification;)V

    .line 1024
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    return v0
.end method

.method public isAnimating()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1035
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$bindHeader$7$NotificationInfo(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$getSettingsOnClickListener$8$NotificationInfo(ILandroid/view/View;)V
    .locals 3

    const-string v0, "blocking_helper_notif_settings"

    .line 531
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    :goto_0
    invoke-interface {v0, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public synthetic lambda$getTurnOffNotificationsClickListener$10$NotificationInfo(Landroid/view/View;)V
    .locals 7

    .line 543
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 544
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 546
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->prepareDialogForApp(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;)V

    .line 548
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$fo5YlwE51RKvEaYVJm46h5cJuGw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$fo5YlwE51RKvEaYVJm46h5cJuGw;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->setOnFinishListener(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V

    .line 552
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->show()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleSaveImportance$5$NotificationInfo(II)V
    .locals 1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportanceAndExitReason(I)V

    .line 227
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->swapContent(IZ)V

    .line 229
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0x655

    .line 230
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x4

    .line 231
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 232
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 229
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$NotificationInfo(Landroid/view/View;)V
    .locals 1

    const-string p1, "blocking_helper_keep_showing"

    .line 186
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x3

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    return-void
.end method

.method public synthetic lambda$new$1$NotificationInfo(Landroid/view/View;)V
    .locals 0

    const-string p1, "blocking_helper_deliver_silently"

    .line 193
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x2

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 195
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    return-void
.end method

.method public synthetic lambda$new$2$NotificationInfo(Landroid/view/View;)V
    .locals 3

    const-string v0, "Notification"

    const-string v1, "InfoGuts"

    const-string v2, "mOnDismissSettings--apply click"

    .line 202
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method public synthetic lambda$new$3$NotificationInfo(Landroid/view/View;)V
    .locals 1

    const-string v0, "blocking_helper_keep_showing"

    .line 210
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->closeControls(Landroid/view/View;Z)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0x655

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x4

    .line 214
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x5

    .line 215
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 212
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public synthetic lambda$new$4$NotificationInfo(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x4

    const/4 v0, 0x5

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->handleSaveImportance(II)V

    return-void
.end method

.method public synthetic lambda$new$6$NotificationInfo(Landroid/view/View;)V
    .locals 3

    const-string p1, "Notification"

    const-string v0, "InfoGuts"

    const-string v1, "mOnUndo--undo button click"

    .line 246
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "blocking_helper_dismissed"

    .line 248
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 249
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    const-string p1, "blocking_helper_undo"

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x655

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x7

    .line 254
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 251
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->importanceChangeLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :goto_0
    const/4 p1, 0x1

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportanceAndExitReason(I)V

    .line 260
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->swapContent(IZ)V

    return-void
.end method

.method public synthetic lambda$null$9$NotificationInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 549
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 550
    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method logBlockingHelperCounter(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 618
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 269
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->onFinishInflate()V

    const v0, 0x7f0a0070

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    const v0, 0x7f0a0533

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    return-void
.end method

.method public onFinishedClosing()V
    .locals 9

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :cond_0
    const-string v0, "blocking_helper_dismissed"

    .line 884
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 888
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->resetContentVisibility(Z)V

    .line 891
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_1

    .line 892
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindBlockingHelper()V

    goto :goto_0

    .line 898
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    move-object v1, p0

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindInlineControlsCustom(ZILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;ZLcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    goto :goto_0

    .line 901
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindInlineControls()V

    .line 906
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 911
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mContext:Landroid/content/Context;

    const v3, 0x7f110586

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 918
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mContext:Landroid/content/Context;

    const v3, 0x7f110585

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 3

    .line 992
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->hasImportanceChanged(Landroid/app/NotificationChannel;ILjava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 995
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    return p0
.end method

.method public swapContent(IZ)V
    .locals 10
    .param p1    # I
        .annotation build Lcom/android/systemui/statusbar/notification/row/NotificationInfo$NotificationInfoAction;
        .end annotation
    .end param

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 793
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const v1, 0x7f0a0105

    if-eqz v0, :cond_2

    .line 794
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_1

    .line 795
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0a02d7

    .line 797
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a01b4

    .line 804
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a01b5

    .line 805
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 807
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportanceAndExitReason(I)V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    const/4 v4, 0x4

    if-eq p1, v4, :cond_7

    const/4 v4, 0x5

    if-eq p1, v4, :cond_6

    const/4 v4, 0x6

    if-eq p1, v4, :cond_5

    const/4 v4, 0x7

    if-ne p1, v4, :cond_4

    .line 824
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->wasNotificationSorted(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f1105a8

    .line 825
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const v4, 0x7f1105aa

    .line 827
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 832
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    const v4, 0x7f110588

    .line 821
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    const v4, 0x7f110596

    .line 818
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    const v4, 0x7f11058d

    .line 813
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_1
    const/4 v2, 0x0

    if-ne p1, v3, :cond_9

    move p1, v3

    goto :goto_2

    :cond_9
    move p1, v2

    :goto_2
    const/16 v4, 0x8

    if-eqz p1, :cond_a

    move v5, v2

    goto :goto_3

    :cond_a
    move v5, v4

    .line 837
    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0a0157

    .line 838
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_b

    move v6, v2

    goto :goto_4

    :cond_b
    move v6, v4

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0a02a9

    .line 839
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_c

    move v6, v2

    goto :goto_5

    :cond_c
    move v6, v4

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    move v4, v2

    .line 840
    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p2, :cond_12

    .line 843
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 844
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz p1, :cond_e

    move v8, v6

    goto :goto_7

    :cond_e
    move v8, v7

    :goto_7
    aput v8, v5, v3

    .line 843
    invoke-static {v0, p2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p1, :cond_f

    .line 845
    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_8

    :cond_f
    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_8
    invoke-virtual {p2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 846
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    .line 847
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v9

    aput v9, v8, v2

    if-eqz p1, :cond_10

    move v6, v7

    :cond_10
    aput v6, v8, v3

    .line 846
    invoke-static {v1, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz p1, :cond_11

    .line 848
    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_9

    :cond_11
    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_9
    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 850
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 851
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p2, v4, v2

    aput-object v5, v4, v3

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 852
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 853
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;ZLandroid/view/ViewGroup;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 869
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 874
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p0, :cond_13

    .line 875
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    :cond_13
    return-void
.end method

.method public willBeRemoved()Z
    .locals 3

    .line 979
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->hasImportanceChanged(Landroid/app/NotificationChannel;ILjava/lang/Integer;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
