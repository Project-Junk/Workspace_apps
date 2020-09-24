.class public Lcom/coloros/systemui/notification/base/NotificationInfoBase;
.super Landroid/widget/LinearLayout;
.source "NotificationInfoBase.java"


# static fields
.field protected static final ACTION_SORT:I = 0x7

.field protected static final ACTION_STOP:I = 0x6

.field private static final FONT_SCALE_LARGE:F = 1.35f

.field private static final TAG:Ljava/lang/String; = "NotificationInfoBase"


# instance fields
.field protected final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method private adjustActionTextSize()V
    .locals 6

    .line 148
    invoke-direct {p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->getActionButtons()[Landroid/widget/TextView;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getFontScale()F

    move-result v1

    const v2, 0x3faccccd    # 1.35f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705b7

    .line 152
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v2

    .line 154
    array-length v1, v0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 155
    invoke-virtual {v5, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$T36w_ERrfEG-7ycvP-xKt-FQlew;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$T36w_ERrfEG-7ycvP-xKt-FQlew;-><init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private adjustActionWidth(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->getActionButtons()[Landroid/widget/TextView;

    move-result-object p1

    .line 164
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 165
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    .line 166
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 167
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$5yCsUuuS_vXz4X_kE6XfR-c1mJc;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$5yCsUuuS_vXz4X_kE6XfR-c1mJc;-><init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 171
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0a010d

    .line 172
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    const p1, 0x7f0a010c

    .line 173
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 174
    :goto_1
    invoke-direct {p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->getActionButtons()[Landroid/widget/TextView;

    move-result-object p0

    .line 175
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 177
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v4, p0, v2

    .line 178
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-le v3, p1, :cond_4

    .line 181
    array-length v1, p0

    :goto_3
    if-ge v0, v1, :cond_4

    aget-object v2, p0, v0

    .line 182
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    array-length v4, p0

    div-int v4, p1, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 184
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method private getActionButtons()[Landroid/widget/TextView;
    .locals 4

    .line 191
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 194
    :goto_0
    array-length v1, v0

    new-array v1, v1, [Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 195
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 196
    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    nop

    :array_0
    .array-data 4
        0x7f0a05d9
        0x7f0a01e9
        0x7f0a021c
    .end array-data

    :array_1
    .array-data 4
        0x7f0a05d8
        0x7f0a054a
        0x7f0a021b
    .end array-data
.end method


# virtual methods
.method protected bindGroupCustom()V
    .locals 1

    const v0, 0x7f0a0280

    .line 208
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected bindInlineControlsCustom(ZILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;ZLcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    const v5, 0x7f0a02d6

    .line 65
    invoke-virtual {v0, v5}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0a0105

    .line 66
    invoke-virtual {v0, v5}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0a02d7

    .line 67
    invoke-virtual {v0, v5}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v5

    const v8, 0x7f0a010d

    .line 71
    invoke-virtual {v0, v8}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v5, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v6

    :goto_0
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0a010c

    .line 72
    invoke-virtual {v0, v8}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v5, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0a05d9

    const v9, 0x7f0a05d8

    const/4 v10, 0x1

    const v11, 0x7f0a01e9

    const v12, 0x7f0a054a

    const v13, 0x7f0a03eb

    const v14, 0x7f0a03ed

    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {v0, v14}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 76
    invoke-virtual {v0, v13}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_2

    move v13, v8

    goto :goto_2

    :cond_2
    move v13, v9

    .line 77
    :goto_2
    invoke-virtual {v0, v13}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 78
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_3

    move v13, v11

    goto :goto_3

    :cond_3
    move v13, v12

    .line 79
    :goto_3
    invoke-virtual {v0, v13}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 80
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_4
    if-le v1, v10, :cond_6

    .line 82
    invoke-virtual {v0, v14}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v0, v13}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_5

    move v13, v11

    goto :goto_4

    :cond_5
    move v13, v12

    .line 84
    :goto_4
    invoke-virtual {v0, v13}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 86
    :cond_6
    invoke-virtual {v0, v14}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {v0, v14}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f11039a

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-virtual {v0, v13}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    move v8, v9

    .line 92
    :goto_6
    invoke-virtual {v0, v8}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-le v1, v10, :cond_8

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    goto :goto_7

    :cond_8
    new-instance v1, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$wR907-_2vrL_27hSDuQSiyT2G3g;

    invoke-direct {v1, v0, v2, v4}, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$wR907-_2vrL_27hSDuQSiyT2G3g;-><init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    :goto_7
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v8}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez p1, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_b

    .line 104
    invoke-virtual {v0, v11}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    new-instance v6, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;

    invoke-direct {v6, v0, v3, v2, v4}, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$O7KWrfKJXjLTfvmLr721zczNHpQ;-><init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;ZLandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_a

    .line 117
    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1105a9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 119
    :cond_a
    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f11057f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 122
    :cond_b
    invoke-virtual {v0, v12}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    new-instance v3, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;

    invoke-direct {v3, v0, v2, v4}, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$C0Wy5LxbuEJ-DhCRawHT0IA3Ij4;-><init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->wasNotificationSorted(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 133
    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f11039d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 135
    :cond_c
    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1103a2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_8
    if-eqz v5, :cond_d

    const v1, 0x7f0a021c

    goto :goto_9

    :cond_d
    const v1, 0x7f0a021b

    .line 139
    :goto_9
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v2, p3

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05fc

    .line 142
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->adjustActionTextSize()V

    return-void
.end method

.method public getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected hasImportanceChanged(Landroid/app/NotificationChannel;ILjava/lang/Integer;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$adjustActionTextSize$3$NotificationInfoBase()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->adjustActionWidth(Z)V

    return-void
.end method

.method public synthetic lambda$adjustActionWidth$4$NotificationInfoBase()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->adjustActionWidth(Z)V

    return-void
.end method

.method public synthetic lambda$bindInlineControlsCustom$0$NotificationInfoBase(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;)V
    .locals 1

    .line 95
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindInlineControlsCustom--turnOffButton click--mSbn.getNotification().extras: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Notification"

    const-string v0, "NotificationInfoBase"

    .line 95
    invoke-static {p3, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "blocking_helper_stop_notifications"

    .line 97
    iput-object p1, p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x6

    const/4 p2, 0x1

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->swapContent(IZ)V

    return-void
.end method

.method public synthetic lambda$bindInlineControlsCustom$1$NotificationInfoBase(ZLandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;)V
    .locals 1

    .line 106
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindInlineControlsCustom--deliverSilent click--mWasShownHighPriority: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "--mSbn.getNotification().extras: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "Notification"

    const-string v0, "NotificationInfoBase"

    .line 106
    invoke-static {p4, v0, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "blocking_helper_deliver_silently"

    .line 109
    iput-object p1, p3, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x4

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->swapContent(IZ)V

    goto :goto_0

    :cond_0
    const-string p1, "blocking_helper_keep_showing"

    .line 112
    iput-object p1, p3, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x5

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->swapContent(IZ)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$bindInlineControlsCustom$2$NotificationInfoBase(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;)V
    .locals 1

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindInlineControlsCustom--sortButton click--mSbn.getNotification().extras: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Notification"

    const-string v0, "NotificationInfoBase"

    .line 124
    invoke-static {p3, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->hasSetNotificationAssistant()Z

    move-result p1

    if-nez p1, :cond_0

    .line 127
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->setCustomNotificationAssistant()V

    :cond_0
    const-string p1, "blocking_helper_notif_sort"

    .line 129
    iput-object p1, p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x7

    const/4 p2, 0x1

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->swapContent(IZ)V

    return-void
.end method

.method public synthetic lambda$null$6$NotificationInfoBase()V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$5$NotificationInfoBase()V
    .locals 1

    const/4 v0, 0x1

    .line 204
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->adjustActionWidth(Z)V

    return-void
.end method

.method public synthetic lambda$toggleStowState$7$NotificationInfoBase(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 242
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 243
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 244
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->setStowOption(Landroid/service/notification/StatusBarNotification;I)V

    .line 245
    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 246
    iget-object v3, p0, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz v3, :cond_1

    .line 247
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v3

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    invoke-virtual {v3, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateEntryStowState(Landroid/service/notification/StatusBarNotification;IZ)V

    .line 248
    new-instance p1, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$Z1dpu3WJD-o4QrWjmA9YLWyBpsk;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$Z1dpu3WJD-o4QrWjmA9YLWyBpsk;-><init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;)V

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    new-instance p1, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$cj8wo7cG1hVgEpNSpWdoFeEmPeg;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$cj8wo7cG1hVgEpNSpWdoFeEmPeg;-><init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected resetContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const p1, 0x7f0a0105

    .line 226
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0a02d7

    .line 228
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 231
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x7f0a0157

    .line 232
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a02a9

    .line 233
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a01b4

    .line 234
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/base/NotificationInfoBase;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public swapContent(IZ)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/systemui/statusbar/notification/row/NotificationInfo$NotificationInfoAction;
        .end annotation
    .end param

    return-void
.end method

.method public toggleStowState(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 239
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p1, :cond_0

    .line 241
    new-instance v1, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$v6R8edKazQqxhyK7gVH_x6coaTM;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/notification/base/-$$Lambda$NotificationInfoBase$v6R8edKazQqxhyK7gVH_x6coaTM;-><init>(Lcom/coloros/systemui/notification/base/NotificationInfoBase;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected wasNotificationSorted(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 218
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 219
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
