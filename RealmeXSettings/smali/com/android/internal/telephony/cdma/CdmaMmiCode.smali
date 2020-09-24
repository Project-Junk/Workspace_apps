.class public final Lcom/android/internal/telephony/cdma/CdmaMmiCode;
.super Landroid/os/Handler;
.source "CdmaMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CdmaMmiCode"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static sPatternSuppService:Ljava/util/regex/Pattern;


# instance fields
.field mAction:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDialingNumber:Ljava/lang/String;

.field mMessage:Ljava/lang/CharSequence;

.field mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field mPoundString:Ljava/lang/String;

.field mPwd:Ljava/lang/String;

.field mSc:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mSia:Ljava/lang/String;

.field mSib:Ljava/lang/String;

.field mSic:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/MmiCode$State;

.field mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-void
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private handlePasswordError(I)V
    .locals 2

    .line 280
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 284
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 285
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    .locals 1

    .line 116
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPoundString:Ljava/lang/String;

    const/4 p1, 0x2

    .line 122
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    const/4 p1, 0x3

    .line 123
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const/4 p1, 0x5

    .line 124
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSia:Ljava/lang/String;

    const/4 p1, 0x7

    .line 125
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSib:Ljava/lang/String;

    const/16 p1, 0x9

    .line 126
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSic:Ljava/lang/String;

    const/16 p1, 0xb

    .line 127
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPwd:Ljava/lang/String;

    const/16 p1, 0xc

    .line 128
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mDialingNumber:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 5

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const v3, 0x1040437

    if-eqz v2, :cond_8

    .line 318
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 319
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_7

    .line 320
    iget-object p2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p2

    .line 321
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    const v4, 0x10400ed

    if-ne p2, v2, :cond_4

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 325
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 326
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400ee

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 333
    :goto_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string p2, "CdmaMmiCode"

    if-gtz p1, :cond_2

    const-string p1, "onSetComplete: PUK locked, cancel as lock screen will handle this"

    .line 335
    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_2

    :cond_2
    if-lez p1, :cond_a

    .line 339
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSetComplete: attemptsRemaining="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1150016

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 340
    invoke-virtual {p2, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 345
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040494

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 348
    :cond_4
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p2, p1, :cond_5

    .line 349
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040440

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 354
    :cond_5
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p2, p1, :cond_6

    .line 355
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string p2, "04"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 356
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x1040217

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 359
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 363
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 366
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 367
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 368
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const p2, 0x104066d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 371
    :cond_9
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 372
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 376
    :cond_a
    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 377
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getDialString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method public final getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public final getUssdCallbackReceiver()Landroid/os/ResultReceiver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 295
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void

    :cond_0
    const-string p1, "CdmaMmiCode"

    const-string v0, "Unexpected reply"

    .line 297
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isCancelable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isPinPukCommand()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final isRegister()Z
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isUssdRequest()Z
    .locals 2

    const-string v0, "CdmaMmiCode"

    const-string v1, "isUssdRequest is not implemented in CdmaMmiCode"

    .line 210
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public final processCode()V
    .locals 6

    const-string v0, "04"

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSia:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSib:Ljava/lang/String;

    .line 233
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 235
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const v0, 0x104042d

    .line 237
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    return-void

    :cond_0
    const/4 v4, 0x4

    if-lt v3, v4, :cond_8

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    goto/16 :goto_0

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 243
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v4, :cond_2

    const v0, 0x104043f

    .line 245
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    return-void

    .line 246
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_7

    const-string v3, "CdmaMmiCode"

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "process mmi service code using UiccApp sc="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 252
    invoke-virtual {p0, v3, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "042"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 255
    invoke-virtual {p0, v3, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 254
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "05"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 258
    invoke-virtual {p0, v3, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 257
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "052"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 261
    invoke-virtual {p0, v3, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 260
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 263
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported service code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No application mUiccApplicaiton is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_0
    const v0, 0x1040307

    .line 240
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    return-void

    .line 269
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ivalid register/action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-void

    .line 273
    :catch_0
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040437

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method
