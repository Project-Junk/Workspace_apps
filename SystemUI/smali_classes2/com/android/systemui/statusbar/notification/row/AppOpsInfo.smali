.class public Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;
.super Landroid/widget/LinearLayout;
.source "AppOpsInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppOpsGuts"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUid:I

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnOk:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;

.field private mPkg:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$AppOpsInfo$zS48CwL7b6UcUOuxgx7Zkw4dC1A;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$AppOpsInfo$zS48CwL7b6UcUOuxgx7Zkw4dC1A;-><init>(Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mOnOk:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bindButtons()V
    .locals 2

    const v0, 0x7f0a051e

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$AppOpsInfo$MC_PUe5w52BX3b0kt9URHDzbSUA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$AppOpsInfo$MC_PUe5w52BX3b0kt9URHDzbSUA;-><init>(Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0417

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mOnOk:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindHeader()V
    .locals 3

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPkg:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppUid:I

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a0458

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0459

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindPrompt()V
    .locals 1

    const v0, 0x7f0a047c

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->getPrompt()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private closeControls(Landroid/view/View;)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x0

    const/16 v2, 0x541

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    const/4 v0, 0x2

    .line 165
    new-array v2, v0, [I

    .line 166
    new-array v3, v0, [I

    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getLocationOnScreen([I)V

    .line 168
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    .line 171
    aget v0, v3, v1

    aget v5, v2, v1

    sub-int/2addr v0, v5

    add-int/2addr v0, v4

    const/4 v4, 0x1

    .line 172
    aget v3, v3, v4

    aget v2, v2, v4

    sub-int/2addr v3, v2

    add-int/2addr v3, p1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method private getPrompt()Ljava/lang/String;
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    if-ne v0, v1, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f110155

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f11015a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f11015b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f110156

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f110158

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 141
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f110159

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f110157

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;",
            "Landroid/service/notification/StatusBarNotification;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPkg:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPkg:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;

    .line 75
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindHeader()V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindPrompt()V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindButtons()V

    .line 81
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 p1, 0x541

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    return-void
.end method

.method public getActualHeight()I
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$bindButtons$1$AppOpsInfo(Landroid/view/View;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppUid:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public synthetic lambda$new$0$AppOpsInfo(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->closeControls(Landroid/view/View;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 150
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v3, 0x7f110586

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mContext:Landroid/content/Context;

    const v3, 0x7f110585

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

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

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
