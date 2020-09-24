.class public Lcom/android/systemui/qs/QSCarrierGroup;
.super Landroid/widget/LinearLayout;
.source "QSCarrierGroup.java"

# interfaces
.implements Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;
    }
.end annotation


# static fields
.field private static final SIM_SLOTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "QSCarrierGroup"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mCarrierDividers:[Landroid/view/View;

.field private mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

.field private mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field private final mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

.field private mListening:Z

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 74
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 75
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 76
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 74
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 56
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    const/4 p1, 0x3

    .line 57
    new-array p2, p1, [Lcom/android/systemui/qs/QSCarrier;

    iput-object p2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    .line 58
    new-array p1, p1, [Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    iput-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    .line 68
    iput-object p3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 69
    iput-object p4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private handleUpdateState()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSCarrier;->updateState(Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, v2, v4

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, v2, v4

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, v2, v4

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p0, p0, v4

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    :cond_4
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateListeners()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mListening:Z

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierTextController;->setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextController;->setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getSlotIndex(I)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 152
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSCarrierGroup;->setListening(Z)V

    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    const v1, 0x7f0a0148

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    const v1, 0x7f0a0149

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    const v1, 0x7f0a014a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSCarrier;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    const v1, 0x7f0a0481

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierDividers:[Landroid/view/View;

    const v1, 0x7f0a0482

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    move v0, v2

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    new-instance v4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;-><init>()V

    aput-object v4, v1, v0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/QSCarrier;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mContext:Landroid/content/Context;

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_kg_text_message_separator:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/keyguard/CarrierTextController;

    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v0, v2, v2}, Lcom/android/keyguard/CarrierTextController;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSCarrierGroup;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 112
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mListening:Z

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->updateListeners()V

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 212
    invoke-virtual {p0, p11}, Lcom/android/systemui/qs/QSCarrierGroup;->getSlotIndex(I)I

    move-result p2

    const-string p3, "QSCarrierGroup"

    const/4 p4, 0x3

    if-lt p2, p4, :cond_0

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMobileDataIndicators - slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p4, -0x1

    if-ne p2, p4, :cond_1

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid SIM slot index for subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p3, p3, p2

    iget-boolean p4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p4, p3, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 222
    iget-object p3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p3, p3, p2

    iget p4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p4, p3, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->mobileSignalIconId:I

    .line 223
    iget-object p3, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p3, p3, p2

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p3, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->contentDescription:Ljava/lang/String;

    .line 224
    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p3, p1, p2

    iput-object p8, p3, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->typeContentDescription:Ljava/lang/String;

    .line 225
    aget-object p1, p1, p2

    iput-boolean p12, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->roaming:Z

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->handleUpdateState()V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->handleUpdateState()V

    return-void
.end method

.method public updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 10

    .line 157
    iget-boolean v0, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->airplaneMode:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;->setVisibility(I)V

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSCarrierGroup;->setVisibility(I)V

    .line 161
    iget-boolean v2, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->anySimReady:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 162
    new-array v2, v3, [Z

    .line 163
    iget-object v5, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    array-length v5, v5

    iget-object v6, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    array-length v6, v6

    const-string v7, "QSCarrierGroup"

    if-ne v5, v6, :cond_5

    move v5, v0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 164
    iget-object v6, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 165
    iget-object v6, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    aget v6, v6, v5

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSCarrierGroup;->getSlotIndex(I)I

    move-result v6

    if-lt v6, v3, :cond_1

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateInfoCarrier - slot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid SIM slot index for subscription: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->subscriptionIds:[I

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v8, v8, v6

    iput-boolean v4, v8, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 177
    aput-boolean v4, v2, v6

    .line 178
    iget-object v8, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v8, v8, v6

    iget-object v9, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    aget-object v9, v9, v5

    .line 179
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 178
    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v8, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v6, v8, v6

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/QSCarrier;->setVisibility(I)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_2
    if-ge p1, v3, :cond_7

    .line 183
    aget-boolean v4, v2, p1

    if-nez v4, :cond_4

    .line 184
    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v4, v4, p1

    iput-boolean v0, v4, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 185
    iget-object v4, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v4, v4, p1

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSCarrier;->setVisibility(I)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "Carrier information arrays not of same length"

    .line 189
    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 192
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object v2, v2, v0

    iput-boolean v0, v2, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 193
    iget-object v2, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object v2, v2, v0

    iget-object p1, p1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object p1, p1, v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSCarrier;->setVisibility(I)V

    :goto_3
    if-ge v4, v3, :cond_7

    .line 196
    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mInfos:[Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;

    aget-object p1, p1, v4

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    .line 197
    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object p1, p1, v4

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p1, p0, Lcom/android/systemui/qs/QSCarrierGroup;->mCarrierGroups:[Lcom/android/systemui/qs/QSCarrier;

    aget-object p1, p1, v4

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSCarrier;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 202
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QSCarrierGroup;->handleUpdateState()V

    return-void
.end method
