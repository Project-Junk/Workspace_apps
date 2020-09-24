.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field protected mActionsContainer:Landroid/view/View;

.field private mCancelledPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeight:I

.field private mHeaderTranslation:F

.field private mMinHeightHint:I

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInputHistory:Landroid/view/View;

.field private mReplyAction:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mTranslationForHeader:I

.field private mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 62
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    .line 67
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    .line 75
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance p3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;)V

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/coloros/common/util/ResourceUtil;->android_dimen_notification_content_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/coloros/common/util/ResourceUtil;->android_dimen_notification_content_margin_top:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTranslationForHeader:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;)Lcom/android/systemui/UiOffloadThread;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-object p0
.end method

.method private blendColorWithBackground(IF)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 226
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 225
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->resolveBackgroundColor()I

    move-result p0

    .line 225
    invoke-static {p1, p0}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method private isOnView(Landroid/view/View;FF)Z
    .locals 2

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_0

    .line 276
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 283
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    float-to-int p1, p2

    float-to-int p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$performOnPendingIntentCancellation$4(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0

    .line 248
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method

.method private performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 230
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_pending_intent_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 238
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$JW7SqyfmhP6HCTJ8F1p53b90n6s;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$JW7SqyfmhP6HCTJ8F1p53b90n6s;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 244
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    if-nez p2, :cond_2

    .line 245
    const-class p2, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/UiOffloadThread;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 247
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 248
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$qLtzjAQEVXJmd7CTS0Q7hmNVWkU;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$qLtzjAQEVXJmd7CTS0Q7hmNVWkU;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {p2, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 250
    :cond_3
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method private resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_id_right_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0a02cc

    .line 149
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 148
    invoke-virtual {v0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 152
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 153
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 154
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 155
    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 160
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_actions_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 161
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_actions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_reply_icon_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    .line 163
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_id_notification_material_reply_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updatePendingIntentCancellations()V

    return-void
.end method

.method private updateActionOffset()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->getHeaderTranslation()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    .line 343
    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updatePendingIntentCancellations()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 173
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$JRq0wlJLDK40PaCOgvvnny6lB0w;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$JRq0wlJLDK40PaCOgvvnny6lB0w;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/widget/Button;)V

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$Znytf0R_oPxyrIENjI1T5rfvZf4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$Znytf0R_oPxyrIENjI1T5rfvZf4;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public disallowSingleClick(FF)Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->isOnView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->isOnView(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 271
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->disallowSingleClick(FF)Z

    move-result p0

    return p0
.end method

.method public getExtraMeasureHeight()I
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getExtraMeasureHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07076e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->getExtraMeasureHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getHeaderTranslation()I
    .locals 0

    .line 350
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    float-to-int p0, p0

    return p0
.end method

.method public synthetic lambda$null$2$NotificationTemplateViewWrapper(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$performOnPendingIntentCancellation$3$NotificationTemplateViewWrapper(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V
    .locals 1

    .line 239
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$fm8INiVD15onME2ihSOTEl2bQXM;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$fm8INiVD15onME2ihSOTEl2bQXM;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$updatePendingIntentCancellations$0$NotificationTemplateViewWrapper(Landroid/widget/Button;)V
    .locals 6

    .line 174
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v2

    .line 181
    array-length v3, v2

    new-array v3, v3, [I

    .line 182
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/coloros/common/util/ResourceUtil;->android_dimen_notification_action_disabled_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 184
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 185
    aget v5, v2, v0

    .line 186
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->blendColorWithBackground(IF)I

    move-result v5

    .line 187
    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 190
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v0

    invoke-direct {p0, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 191
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$updatePendingIntentCancellations$1$NotificationTemplateViewWrapper()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/PorterDuffColorFilter;

    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/common/util/ResourceUtil;->android_dimen_notification_action_disabled_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v3

    .line 213
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->blendColorWithBackground(IF)I

    move-result p0

    .line 214
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 290
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V

    .line 291
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->setHeaderVisibleAmount(F)V

    :cond_0
    return-void
.end method

.method public setContentHeight(II)V
    .locals 0

    .line 321
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setContentHeight(II)V

    .line 323
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mContentHeight:I

    .line 324
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mMinHeightHint:I

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateActionOffset()V

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1

    .line 355
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setHeaderVisibleAmount(F)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 357
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTranslationForHeader:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    .line 358
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 1

    .line 330
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 333
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .line 300
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_3
    return-void
.end method
