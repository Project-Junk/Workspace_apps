.class public Lcom/android/internal/telephony/uicc/UiccSlot;
.super Landroid/os/Handler;
.source "UiccSlot.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field public static final EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field public static final INVALID_PHONE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UiccSlot"


# instance fields
.field private mActive:Z

.field private mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIccId:Ljava/lang/String;

.field private mIsEuicc:Z

.field private mIsRemovable:Z

.field private mLastRadioState:I

.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mStateIsUnknown:Z

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    const/4 v0, 0x2

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    const-string v0, "Creating"

    .line 72
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-void
.end method

.method private absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z
    .locals 1

    .line 173
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkIsEuiccSupported()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isEuiccSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return-void
.end method

.method private isSlotRemovable(I)Z
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070075

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    if-ne v5, p1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UiccSlot"

    .line 411
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UiccSlot"

    .line 415
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private nullifyUiccCard(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-void
.end method

.method private onIccSwap(Z)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "onIccSwap: isHotSwapSupported is true, don\'t prompt for rebooting"

    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    .line 290
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V

    return-void
.end method

.method private parseAtr(Ljava/lang/String;)V
    .locals 0

    .line 242
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkIsEuiccSupported()V

    return-void
.end method

.method private promptForRestart(Z)V
    .locals 6

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040178

    .line 298
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 302
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

    .line 303
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unable to find ICC hotswap prompt for restart activity: "

    .line 308
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 322
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$1;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V

    .line 337
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    const v3, 0x1040687

    .line 339
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v3, 0x104068a

    .line 340
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_2

    const p1, 0x1040686

    .line 341
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const p1, 0x1040689

    .line 342
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const v4, 0x104068b

    .line 343
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 347
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 348
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 351
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 352
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private updateCardStateAbsent()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 181
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    if-ne v3, v2, :cond_1

    const-string/jumbo v2, "update: notify card removed"

    .line 183
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/16 v2, 0xd

    .line 184
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->sendMessage(Landroid/os/Message;)Z

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    invoke-static {v2, v3, v1, v4}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    :cond_2
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 195
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "UiccSlot:"

    .line 422
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mActive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsEuicc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mLastRadioState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIccId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCardState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUiccCard="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, " mUiccCard=null"

    .line 433
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 436
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    const-string v0, "UiccSlot finalized"

    .line 278
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-nez v1, :cond_0

    .line 376
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object v1

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 380
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    return v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 389
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 362
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 359
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    return v0
.end method

.method public isEuicc()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return v0
.end method

.method public isExtendedApduSupported()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isExtendedApduSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    return v0
.end method

.method public isStateUnknown()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    return v0
.end method

.method public onRadioStateUnavailable()V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    :cond_0
    const/4 v0, 0x1

    .line 399
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 401
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    .line 406
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v0, 0x2

    .line 407
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;II)V
    .locals 7

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cardStatus update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 85
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 86
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    .line 87
    iput p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 88
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isSlotRemovable(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    .line 92
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    .line 94
    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update: radioState="

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLastRadioState="

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent()V

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 103
    sget-object p4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, p4, :cond_1

    iget-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez p4, :cond_6

    :cond_1
    iget-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p4, v1, :cond_6

    const/4 p4, 0x1

    if-ne p1, p4, :cond_2

    .line 106
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    if-ne v1, p4, :cond_2

    const-string/jumbo p4, "update: notify card added"

    .line 108
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/16 p4, 0xe

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, p4, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/uicc/UiccSlot;->sendMessage(Landroid/os/Message;)Z

    .line 113
    :cond_2
    iget-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p4, :cond_3

    const-string/jumbo p4, "update: mUiccCard != null when card was present; disposing it now"

    .line 114
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 115
    iget-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p4}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 118
    :cond_3
    iget-boolean p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-nez p4, :cond_4

    .line 119
    new-instance p3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    move-object v1, p3

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_0

    .line 123
    :cond_4
    iget-object p4, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 124
    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update: eid is missing. ics.eid="

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 126
    :cond_5
    new-instance p4, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    move-object v1, p4

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_0

    .line 129
    :cond_6
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p3, :cond_7

    .line 130
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object p4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p3, p4, v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 133
    :cond_7
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;I)V
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "slotStatus update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 145
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 146
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 147
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    .line 148
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isSlotRemovable(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    .line 149
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    sget-object p3, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_INACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    const/4 v2, 0x1

    if-ne p1, p3, :cond_1

    .line 152
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    const/4 p1, 0x2

    .line 154
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:I

    const/4 p1, -0x1

    .line 155
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 156
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 157
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    goto :goto_0

    .line 160
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 161
    iget p1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 162
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent()V

    .line 169
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
