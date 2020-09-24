.class public Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;
.super Landroid/widget/TextView;
.source "ColorQSCarrierText.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATA_USAGE_SETTINGS:Ljava/lang/String; = "oppo.datausage.settings.DATA_USAGE_SETTINGS"

.field private static final TAG:Ljava/lang/String; = "ColorQSCarrierText"


# instance fields
.field private anySimReady:Z

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAirplaneMode:Z

.field private mCarrierTextCallback:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;

.field private mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

.field private mDataUsageString:Ljava/lang/CharSequence;

.field private mDateUsageObserver:Landroid/database/ContentObserver;

.field private mDateUsageShow:Z

.field private mLastText:Ljava/lang/CharSequence;

.field private mListening:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 95
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageShow:Z

    const-string p1, ""

    .line 51
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mLastText:Ljava/lang/CharSequence;

    .line 56
    new-instance p1, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mCarrierTextCallback:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;

    .line 84
    new-instance p1, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$2;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageObserver:Landroid/database/ContentObserver;

    .line 100
    iput-object p3, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->anySimReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$202(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDataUsageString:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageShow:Z

    return p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageShow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mLastText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mLastText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private registerDataUsageObserver()V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mAirplaneMode:Z

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "oppo_disaplay_calculate_data_traffic"

    .line 130
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageShow:Z

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oppo_data_traffic_used"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 115
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 116
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mCarrierTextCallback:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->setListening(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;)V

    .line 117
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->registerDataUsageObserver()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 158
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageShow:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mAirplaneMode:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->anySimReady:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDataUsageString:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getCurrentUserId()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Statusbar"

    const-string v0, "ColorQSCarrierText"

    const-string v1, "clicked ------"

    .line 160
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "oppo.datausage.settings.DATA_USAGE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 122
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->setListening(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;)V

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mDateUsageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 105
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 106
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11069c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11069b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    .line 109
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {v2, v1, v0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->setSeparator(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0, p0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 145
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mListening:Z

    .line 146
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mListening:Z

    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->updateEverything()V

    :cond_1
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->mCarrierTextController:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierTextInBgThread()V

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setSelected(Z)V

    return-void
.end method
