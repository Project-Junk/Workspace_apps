.class public final Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.super Landroid/os/Handler;
.source "ImsPhoneMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field private static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field private static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field private static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field private static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field private static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field private static final END_OF_USSD_COMMAND:C = '#'

.field private static final EVENT_GET_CLIR_COMPLETE:I = 0x6

.field private static final EVENT_QUERY_CF_COMPLETE:I = 0x1

.field private static final EVENT_QUERY_COMPLETE:I = 0x3

.field private static final EVENT_QUERY_ICB_COMPLETE:I = 0xa

.field private static final EVENT_SET_CFF_COMPLETE:I = 0x4

.field private static final EVENT_SET_COMPLETE:I = 0x0

.field private static final EVENT_SUPP_SVC_QUERY_COMPLETE:I = 0x7

.field private static final EVENT_USSD_CANCEL_COMPLETE:I = 0x5

.field private static final EVENT_USSD_COMPLETE:I = 0x2

.field static final IcbAnonymousMmi:Ljava/lang/String; = "Anonymous Incoming Call Barring"

.field static final IcbDnMmi:Ljava/lang/String; = "Specific Incoming Call Barring"

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneMmiCode"

.field private static final MATCH_GROUP_ACTION:I = 0x2

.field private static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field private static final MATCH_GROUP_POUND_STRING:I = 0x1

.field private static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field private static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field private static final MATCH_GROUP_SIA:I = 0x5

.field private static final MATCH_GROUP_SIB:I = 0x7

.field private static final MATCH_GROUP_SIC:I = 0x9

.field private static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field private static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final NUM_PRESENTATION_RESTRICTED:I = 0x1

.field private static final SC_BAIC:Ljava/lang/String; = "35"

.field private static final SC_BAICa:Ljava/lang/String; = "157"

.field private static final SC_BAICr:Ljava/lang/String; = "351"

.field private static final SC_BAOC:Ljava/lang/String; = "33"

.field private static final SC_BAOIC:Ljava/lang/String; = "331"

.field private static final SC_BAOICxH:Ljava/lang/String; = "332"

.field private static final SC_BA_ALL:Ljava/lang/String; = "330"

.field private static final SC_BA_MO:Ljava/lang/String; = "333"

.field private static final SC_BA_MT:Ljava/lang/String; = "353"

.field private static final SC_BS_MT:Ljava/lang/String; = "156"

.field private static final SC_CFB:Ljava/lang/String; = "67"

.field private static final SC_CFNR:Ljava/lang/String; = "62"

.field private static final SC_CFNRy:Ljava/lang/String; = "61"

.field private static final SC_CFU:Ljava/lang/String; = "21"

.field private static final SC_CFUT:Ljava/lang/String; = "22"

.field private static final SC_CF_All:Ljava/lang/String; = "002"

.field private static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field private static final SC_CLIP:Ljava/lang/String; = "30"

.field private static final SC_CLIR:Ljava/lang/String; = "31"

.field private static final SC_CNAP:Ljava/lang/String; = "300"

.field private static final SC_COLP:Ljava/lang/String; = "76"

.field private static final SC_COLR:Ljava/lang/String; = "77"

.field private static final SC_PIN:Ljava/lang/String; = "04"

.field private static final SC_PIN2:Ljava/lang/String; = "042"

.field private static final SC_PUK:Ljava/lang/String; = "05"

.field private static final SC_PUK2:Ljava/lang/String; = "052"

.field private static final SC_PWD:Ljava/lang/String; = "03"

.field private static final SC_WAIT:Ljava/lang/String; = "43"

.field public static final UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"

.field public static final UT_BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"

.field private static sPatternSuppService:Ljava/util/regex/Pattern;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCallbackReceiver:Landroid/os/ResultReceiver;

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mDialingNumber:Ljava/lang/String;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsCallFwdReg:Z

.field private mIsPendingUSSD:Z

.field private mIsSsInfo:Z

.field private mIsUssdRequest:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPoundString:Ljava/lang/String;

.field private mPwd:Ljava/lang/String;

.field private mSc:Ljava/lang/String;

.field private mSia:Ljava/lang/String;

.field private mSib:Ljava/lang/String;

.field private mSic:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    .line 193
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsSsInfo:Z

    .line 501
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 502
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 503
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-void
.end method

.method private static convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 298
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternCdmaMmiCodeWhileRoaming:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 301
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 302
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "67"

    .line 304
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "#31#"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v3, "82"

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "*31#"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104066a

    .line 1708
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x80

    if-gt v1, v2, :cond_1

    and-int v2, v1, p1

    if-eqz v2, :cond_0

    const-string v3, "\n"

    .line 1715
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getActionStringFromReqType(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "##"

    return-object p1

    :cond_1
    const-string p1, "**"

    return-object p1

    :cond_2
    const-string p1, "*#"

    return-object p1

    :cond_3
    const-string p1, "#"

    return-object p1

    :cond_4
    const-string p1, "*"

    return-object p1
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1198
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 1199
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040437

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 2

    .line 1723
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1725
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 1727
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1728
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1730
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 8

    .line 1203
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/ims/ImsException;

    const v1, 0x10406cb

    const v2, 0x10406cc

    const v3, 0x10406cd

    const v4, 0x10406ca

    const v5, 0x1040439

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 1204
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/ims/ImsException;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result p1

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-object v6

    .line 1214
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1212
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1210
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1208
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1206
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1218
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_6

    .line 1219
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1220
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v7, :cond_2

    .line 1221
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1222
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v5, :cond_3

    .line 1223
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1224
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v4, :cond_4

    .line 1225
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1226
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_5

    .line 1227
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1228
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_6

    .line 1229
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x336
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1238
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040027

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1246
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1247
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1248
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1250
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "76"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1252
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040034

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1254
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Specific Incoming Call Barring"

    return-object v0

    .line 1256
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "157"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Anonymous Incoming Call Barring"

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method private getScStringFromScType(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    const-string p1, "157"

    return-object p1

    :pswitch_2
    const-string p1, "156"

    return-object p1

    :pswitch_3
    const-string p1, "353"

    return-object p1

    :pswitch_4
    const-string p1, "333"

    return-object p1

    :pswitch_5
    const-string p1, "330"

    return-object p1

    :pswitch_6
    const-string p1, "351"

    return-object p1

    :pswitch_7
    const-string p1, "35"

    return-object p1

    :pswitch_8
    const-string p1, "332"

    return-object p1

    :pswitch_9
    const-string p1, "331"

    return-object p1

    :pswitch_a
    const-string p1, "33"

    return-object p1

    :pswitch_b
    const-string p1, "43"

    return-object p1

    :pswitch_c
    const-string p1, "300"

    return-object p1

    :pswitch_d
    const-string p1, "77"

    return-object p1

    :pswitch_e
    const-string p1, "76"

    return-object p1

    :pswitch_f
    const-string p1, "31"

    return-object p1

    :pswitch_10
    const-string p1, "30"

    return-object p1

    :pswitch_11
    const-string p1, "004"

    return-object p1

    :pswitch_12
    const-string p1, "002"

    return-object p1

    :pswitch_13
    const-string p1, "62"

    return-object p1

    :pswitch_14
    const-string p1, "61"

    return-object p1

    :pswitch_15
    const-string p1, "67"

    return-object p1

    :pswitch_16
    const-string p1, "21"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p0, :cond_1

    .line 375
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static isScMatchesSuppServType(Ljava/lang/String;)Z
    .locals 2

    .line 359
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 360
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 361
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "22"

    .line 362
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "156"

    .line 364
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isServiceClassVoiceVideoOrNone(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x50

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 5

    .line 455
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const v2, 0x107001b

    .line 457
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 461
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "21"

    .line 447
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    .line 448
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    .line 449
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    .line 450
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 611
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 615
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 618
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result p0

    return p0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    return v1

    .line 643
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 644
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x31

    if-eq p0, p1, :cond_2

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "ImsPhoneMmiCode"

    const-string v1, "isTwoDigitShortCode"

    .line 576
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 580
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x1070060

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .line 585
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 586
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Two Digit Number Pattern "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "Two Digit Number Pattern -true"

    .line 588
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "Two Digit Number Pattern -false"

    .line 592
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v1
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 8

    const-string/jumbo v0, "{0}"

    const-string/jumbo v1, "{1}"

    const-string/jumbo v2, "{2}"

    .line 1363
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 1364
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 1370
    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1373
    :goto_0
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v5, :cond_2

    if-eqz v2, :cond_1

    .line 1375
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x104011f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 1378
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x104011e

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 1381
    :cond_2
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1382
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x1040120

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 1389
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x1040122

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 1392
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x1040121

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1402
    :goto_1
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, p2

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v1, v4

    .line 1403
    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 1404
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 1406
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v3, :cond_6

    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr p2, v3

    if-ne p2, v5, :cond_6

    .line 1409
    iget p2, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne p2, v5, :cond_5

    move v4, v5

    .line 1410
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p2, :cond_6

    .line 1411
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p2, v5, v4, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1415
    :cond_6
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 236
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object p0

    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 4

    .line 244
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 252
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "#"

    if-eqz v1, :cond_1

    .line 256
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    const/4 v1, 0x1

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    const/4 v1, 0x2

    .line 258
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const/4 v1, 0x3

    .line 259
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const/4 v1, 0x5

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    const/4 v1, 0x7

    .line 261
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    const/16 v1, 0x9

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    const/16 v1, 0xb

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    const/16 v1, 0xc

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 265
    iput-object p2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    .line 271
    iget-object p2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 272
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 273
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 274
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 275
    iput-object p0, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 282
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 283
    iput-object p0, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 287
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 289
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 290
    iput-object p0, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    :cond_4
    :goto_0
    return-object v2
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 1

    .line 336
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 338
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 339
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 p0, 0x1

    .line 340
    iput-boolean p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 1

    .line 319
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 321
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 322
    iput-boolean p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 326
    iput-boolean p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 327
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 329
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    :goto_0
    return-object v0
.end method

.method private onIcbQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8

    .line 1538
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onIcbQueryComplete mmi="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    .line 1540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1543
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1545
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    .line 1546
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1548
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1551
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1552
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x1040668

    if-nez v2, :cond_2

    .line 1553
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1556
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_5

    .line 1557
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsSsInfo;

    .line 1558
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getIncomingCommunicationBarringNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1559
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Num: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getIncomingCommunicationBarringNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1559
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1561
    :cond_3
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1562
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x1040669

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1565
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1570
    :cond_5
    :goto_2
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1572
    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1573
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 8

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    .line 1422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1425
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1427
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    .line 1428
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1431
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1436
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    .line 1438
    array-length v4, p1

    if-nez v4, :cond_2

    goto :goto_2

    .line 1448
    :cond_2
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    :goto_0
    const/16 v5, 0x80

    if-gt v3, v5, :cond_5

    .line 1460
    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_4

    .line 1461
    aget-object v7, p1, v6

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_3

    .line 1462
    aget-object v7, p1, v6

    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1464
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1468
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1440
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040668

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1443
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p1, :cond_7

    .line 1444
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1471
    :cond_7
    :goto_3
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1474
    :goto_4
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1475
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onQueryCfComplete: mmi="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneMmiCode"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private onQueryClirComplete(Landroid/os/AsyncResult;)V
    .locals 8

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    .line 1578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1581
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "ImsPhoneMmiCode"

    if-eqz v1, :cond_0

    .line 1582
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_b

    .line 1583
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1586
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "queryClir"

    .line 1587
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onQueryClirComplete: CLIR param n="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " m="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    aget v1, p1, v4

    if-eqz v1, :cond_a

    if-eq v1, v4, :cond_9

    const/4 v5, 0x3

    const/4 v6, 0x2

    const v7, 0x1040437

    if-eq v1, v5, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    .line 1654
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1656
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1631
    :cond_1
    aget p1, p1, v3

    const v1, 0x1040028

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v6, :cond_2

    .line 1648
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1650
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1643
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1645
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1638
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040029

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1640
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1633
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1635
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1607
    :cond_5
    aget p1, p1, v3

    const v1, 0x104002b

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v6, :cond_6

    .line 1624
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1626
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1619
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104002a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1621
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1614
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1616
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1609
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1611
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1601
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104002c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1603
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1596
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104066c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1598
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1660
    :cond_b
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1661
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onQueryClirComplete mmi="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 5

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    .line 1668
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1671
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1673
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    .line 1674
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1676
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1680
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1682
    array-length v1, p1

    const v2, 0x1040437

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 1683
    aget v3, p1, v1

    if-nez v3, :cond_2

    .line 1684
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040668

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1685
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1687
    aget p1, p1, v4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1688
    :cond_3
    aget p1, p1, v1

    if-ne p1, v4, :cond_4

    .line 1690
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040669

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1692
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1695
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1697
    :goto_0
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1700
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1701
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onQueryComplete mmi="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneMmiCode"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 4

    .line 1266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, "\n"

    .line 1267
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const v1, 0x1040437

    if-eqz v0, :cond_4

    .line 1270
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1272
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_3

    .line 1273
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1275
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_0

    .line 1276
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040494

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1278
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1279
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1280
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1281
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1283
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1285
    :cond_3
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_a

    .line 1286
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1288
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result p2

    const v0, 0x104066d

    const-string v2, "31"

    if-eqz p2, :cond_6

    .line 1289
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1290
    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    if-eqz p2, :cond_5

    .line 1291
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1294
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040669

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1298
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1299
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->saveClirSetting(I)V

    goto :goto_1

    .line 1301
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1302
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1303
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040668

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1306
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1307
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->saveClirSetting(I)V

    goto :goto_1

    .line 1309
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1310
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1311
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1313
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1314
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1315
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x104066b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1318
    :cond_9
    sget-object p2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1319
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1323
    :cond_a
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1324
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSetComplete: mmi="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsPhoneMmiCode"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    .line 1482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1485
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "ImsPhoneMmiCode"

    if-eqz v1, :cond_1

    .line 1486
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    .line 1487
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1489
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1493
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Bundle;

    const v3, 0x1040669

    const v4, 0x1040668

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    const-string v1, "onSuppSvcQueryComplete: Received CLIP/COLP/COLR Response."

    .line 1494
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "imsSsInfo"

    .line 1497
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsSsInfo;

    const v1, 0x1040437

    if-eqz p1, :cond_5

    .line 1499
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onSuppSvcQueryComplete: ImsSsInfo mStatus = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1499
    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v6

    if-nez v6, :cond_2

    .line 1502
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104066c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1504
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1505
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v6

    if-nez v6, :cond_3

    .line 1506
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1507
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1508
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result p1

    if-ne p1, v5, :cond_4

    .line 1509
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1510
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1512
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1515
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const-string v1, "onSuppSvcQueryComplete: Received Call Barring Response."

    .line 1519
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v1, 0x0

    .line 1522
    aget p1, p1, v1

    if-ne p1, v5, :cond_7

    .line 1523
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1524
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1526
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1527
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1532
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1533
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSuppSvcQueryComplete mmi="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method private processIcbMmiCodeForUpdate()V
    .locals 5

    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "\\$"

    .line 1180
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1182
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->callBarAction(Ljava/lang/String;)I

    move-result v0

    .line 1185
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 1188
    invoke-virtual {p0, v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1186
    invoke-interface {v2, v3, v0, v4, v1}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "ImsPhoneMmiCode"

    const-string v1, "processIcbMmiCodeForUpdate:Could not get UT handle for updating ICB."

    .line 1191
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "invalid call barring sc"

    if-eqz p0, :cond_8

    const-string v1, "33"

    .line 474
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "AO"

    return-object p0

    :cond_0
    const-string v1, "331"

    .line 476
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "OI"

    return-object p0

    :cond_1
    const-string v1, "332"

    .line 478
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "OX"

    return-object p0

    :cond_2
    const-string v1, "35"

    .line 480
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "AI"

    return-object p0

    :cond_3
    const-string v1, "351"

    .line 482
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "IR"

    return-object p0

    :cond_4
    const-string v1, "330"

    .line 484
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "AB"

    return-object p0

    :cond_5
    const-string v1, "333"

    .line 486
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "AG"

    return-object p0

    :cond_6
    const-string v1, "353"

    .line 488
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "AC"

    return-object p0

    .line 491
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 471
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2

    const-string v0, "invalid call forward sc"

    if-eqz p0, :cond_6

    const-string v1, "002"

    .line 384
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const-string v1, "21"

    .line 386
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v1, "67"

    .line 388
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v1, "62"

    .line 390
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-string v1, "61"

    .line 392
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const-string v1, "004"

    .line 394
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 397
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 381
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1353
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040664

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1351
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040665

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1349
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040661

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1347
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040662

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1345
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040666

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1343
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040663

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1341
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040660

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1339
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040667

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_3

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 407
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v2, 0x63

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "unsupported MMI service code "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x11

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    return v1

    :pswitch_3
    const/16 p0, 0x50

    return p0

    :pswitch_4
    const/16 p0, 0xa0

    return p0

    :pswitch_5
    const/16 p0, 0x30

    return p0

    :pswitch_6
    const/4 p0, 0x5

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_a
    const/16 p0, 0xd

    return p0

    :cond_1
    const/16 p0, 0x40

    return p0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 440
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final callBarAction(Ljava/lang/String;)I
    .locals 2

    .line 770
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 774
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v0

    const-string v1, "invalid action"

    if-eqz v0, :cond_3

    .line 775
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 778
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 780
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    return p1

    .line 783
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final cancel()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 534
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->cancelUSSD(Landroid/os/Message;)V

    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method final getCLIRMode()I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getDialString()Ljava/lang/String;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    return-object v0
.end method

.method final getDialingNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method public final getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public final getUssdCallbackReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1087
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1153
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1154
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1163
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1164
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_2

    .line 1149
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void

    .line 1095
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1101
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1102
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1109
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1

    .line 1111
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVideoCallForwardingPreference(Z)V

    .line 1112
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    goto :goto_1

    .line 1113
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_2

    .line 1114
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1118
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void

    .line 1127
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1132
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1134
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 1135
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1138
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_3
    :goto_2
    return-void

    .line 1122
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1089
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1091
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void

    .line 1158
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onIcbQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final isActivate()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCancelable()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method final isDeactivate()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isErasure()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isInterrogate()Z
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isMMI()Z
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPendingUSSD()Z
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method public final isPinPukCommand()Z
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

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
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

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

.method final isShortCode()Z
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSsInfo()Z
    .locals 1

    .line 1907
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsSsInfo:Z

    return v0
.end method

.method final isSupportedOverImsPhone()Z
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 731
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 733
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, "43"

    .line 734
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "31"

    if-eqz v0, :cond_2

    .line 735
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    if-eqz v0, :cond_3

    .line 736
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v5, "77"

    .line 737
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v5, "76"

    .line 738
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v5, "156"

    .line 739
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v5, "157"

    .line 740
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 754
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v5, "03"

    .line 756
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 758
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_c

    return v1

    :cond_9
    :goto_0
    return v2

    .line 743
    :cond_a
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_b

    const/16 v3, 0x50

    if-eq v0, v3, :cond_b

    return v2

    :cond_b
    return v1

    :catch_0
    move-exception v0

    .line 752
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid service class "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v2
.end method

.method final isTemporaryModeCLIR()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isUssdRequest()Z
    .locals 1

    .line 725
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    return v0
.end method

.method final onUssdFinished(Ljava/lang/String;Z)V
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_2

    .line 1036
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ImsPhoneMmiCode"

    if-eqz v0, :cond_0

    .line 1037
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v0, 0x1040436

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1038
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onUssdFinished: no message; using: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1040
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onUssdFinished: message: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1043
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    if-nez p2, :cond_1

    .line 1046
    sget-object p1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1048
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_2
    return-void
.end method

.method final onUssdFinishedError()V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    .line 1061
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040437

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1063
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUssdFinishedError: mmi="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_0
    return-void
.end method

.method final parseSsData(Landroid/telephony/ims/ImsSsData;)V
    .locals 8

    .line 1752
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1753
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1754
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScStringFromScType(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 1755
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getActionStringFromReqType(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    .line 1756
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseSsData msc = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsPhoneMmiCode"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v6, :cond_9

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1

    if-eq v2, v5, :cond_9

    const/4 v7, 0x4

    if-eq v2, v7, :cond_9

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invaid requestType in SSData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1795
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CLIR INTERROGATION"

    .line 1796
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1798
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfoCompat()[I

    move-result-object p1

    const-string v3, "queryClir"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1799
    new-instance p1, Landroid/os/AsyncResult;

    invoke-direct {p1, v1, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1800
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeCF()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "CALL FORWARD INTERROGATION"

    .line 1801
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getCallForwardInfo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1807
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 1808
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/ims/ImsCallForwardInfo;

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 1810
    :goto_1
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1812
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeBarring()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1813
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfoCompat()[I

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1815
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeColr()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeClip()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeColp()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 1821
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeIcb()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1822
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfo()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onIcbQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1824
    :cond_7
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfoCompat()[I

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1816
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getSuppServiceInfoCompat()[I

    move-result-object p1

    .line 1817
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    aget p1, p1, v4

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object p1

    .line 1818
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "imsSsInfo"

    .line 1819
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1820
    new-instance p1, Landroid/os/AsyncResult;

    invoke-direct {p1, v1, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    return-void

    .line 1763
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v2

    if-nez v2, :cond_e

    .line 1764
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeUnConditional()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1770
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1771
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v2

    if-ne v2, v5, :cond_b

    .line 1772
    :cond_a
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceClass()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceClassVoiceVideoOrNone(I)Z

    move-result v2

    if-eqz v2, :cond_b

    move v4, v6

    .line 1774
    :cond_b
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "setCallForwardingFlag cffEnabled: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_d

    const-string v2, "setVoiceCallForwardingFlag done from SS Info."

    .line 1776
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget v5, p1, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    const/16 v7, 0x50

    if-ne v5, v7, :cond_c

    const-string v2, "setVideoCallForwardingFlag done from SS Info."

    .line 1781
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVideoCallForwardingPreference(Z)V

    .line 1783
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    goto :goto_3

    .line 1785
    :cond_c
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v6, v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v2, "setCallForwardingFlag aborted. sim records is null."

    .line 1789
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_e
    :goto_3
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getCallForwardInfo()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    return-void
.end method

.method public final processCode()V
    .locals 15
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "ImsPhoneMmiCode"

    .line 792
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_c

    const-string v2, "cs_fallback"

    const-string v3, "\' over CS pipe."

    if-nez v1, :cond_29

    .line 799
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_a

    const-string v1, "processCode: is CF"

    .line 800
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 803
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v9

    .line 804
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v11

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v12

    .line 807
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 809
    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 808
    invoke-virtual {v1, v9, v11, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    return-void

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    .line 818
    invoke-static {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    iput-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    move v8, v5

    goto :goto_1

    .line 823
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    :goto_0
    move v8, v4

    goto :goto_1

    .line 825
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_3

    move v8, v6

    goto :goto_1

    .line 827
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 829
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v1

    if-eqz v1, :cond_9

    move v8, v2

    :goto_1
    if-eqz v9, :cond_6

    if-ne v9, v2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v5

    :goto_3
    if-eq v8, v5, :cond_8

    if-ne v8, v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    :cond_8
    :goto_4
    const-string v3, "processCode: is CF setCallForward"

    .line 843
    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 845
    invoke-virtual {p0, v2, v1, v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 844
    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void

    .line 832
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid action"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_c

    const/4 v7, 0x7

    const-string v8, "Invalid or Unsupported MMI Code"

    if-eqz v1, :cond_e

    .line 855
    :try_start_2
    iget-object v12, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 856
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 857
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v14

    .line 859
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 861
    invoke-virtual {p0, v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 860
    invoke-virtual {v1, v10, v2, v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V

    return-void

    .line 862
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    .line 866
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 863
    :cond_d
    :goto_5
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v11

    .line 864
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 863
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    return-void

    .line 868
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const/4 v9, 0x6

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "31"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 872
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_c

    const-string v2, "processCode: Could not get UT handle for updateCLIR."

    if-eqz v1, :cond_f

    .line 874
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 875
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 874
    invoke-interface {v1, v5, v3}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_c

    return-void

    .line 877
    :catch_0
    :try_start_4
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 879
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_c

    if-eqz v1, :cond_10

    .line 881
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    const/4 v3, 0x2

    .line 882
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 881
    invoke-interface {v1, v3, v4}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_c

    return-void

    .line 884
    :catch_1
    :try_start_6
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 886
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_c

    if-eqz v1, :cond_11

    .line 888
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 889
    invoke-virtual {p0, v9, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_7
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    return-void

    :catch_2
    :try_start_8
    const-string v1, "processCode: Could not get UT handle for queryCLIR."

    .line 891
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 894
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 896
    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "30"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 898
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c

    if-eqz v1, :cond_13

    .line 900
    :try_start_9
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 901
    invoke-virtual {p0, v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_9
    .catch Lcom/android/ims/ImsException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_c

    return-void

    :catch_3
    :try_start_a
    const-string v1, "processCode: Could not get UT handle for queryCLIP."

    .line 903
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 905
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_6

    .line 913
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_c

    .line 907
    :cond_15
    :goto_6
    :try_start_b
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v2

    .line 908
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 907
    invoke-interface {v1, v2, v3}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_b
    .catch Lcom/android/ims/ImsException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c

    return-void

    :catch_4
    :try_start_c
    const-string v1, "processCode: Could not get UT handle for updateCLIP."

    .line 910
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 915
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "76"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 917
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_c

    if-eqz v1, :cond_17

    .line 919
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 920
    invoke-virtual {p0, v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_d
    .catch Lcom/android/ims/ImsException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_c

    return-void

    :catch_5
    :try_start_e
    const-string v1, "processCode: Could not get UT handle for queryCOLP."

    .line 922
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 924
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_7

    .line 932
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_c

    .line 926
    :cond_19
    :goto_7
    :try_start_f
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v2

    .line 927
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 926
    invoke-interface {v1, v2, v3}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_f
    .catch Lcom/android/ims/ImsException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_c

    return-void

    :catch_6
    :try_start_10
    const-string v1, "processCode: Could not get UT handle for updateCOLP."

    .line 929
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 934
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "77"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 936
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_c

    const-string v2, "processCode: Could not get UT handle for updateCOLR."

    if-eqz v1, :cond_1b

    .line 938
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 939
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 938
    invoke-interface {v1, v5, v3}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_11
    .catch Lcom/android/ims/ImsException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_c

    return-void

    .line 941
    :catch_7
    :try_start_12
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 943
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_c

    if-eqz v1, :cond_1c

    .line 945
    :try_start_13
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 946
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 945
    invoke-interface {v1, v6, v3}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_13
    .catch Lcom/android/ims/ImsException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_c

    return-void

    .line 948
    :catch_8
    :try_start_14
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 950
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_c

    if-eqz v1, :cond_1d

    .line 952
    :try_start_15
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 953
    invoke-virtual {p0, v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_15
    .catch Lcom/android/ims/ImsException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_c

    return-void

    :catch_9
    :try_start_16
    const-string v1, "processCode: Could not get UT handle for queryCOLR."

    .line 955
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 958
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 960
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const/16 v7, 0xa

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "156"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_c

    if-eqz v1, :cond_20

    .line 962
    :try_start_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 963
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 965
    invoke-virtual {p0, v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 964
    invoke-interface {v1, v7, v2}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    return-void

    .line 967
    :cond_1f
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_17
    .catch Lcom/android/ims/ImsException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_c

    return-void

    :catch_a
    :try_start_18
    const-string v1, "processCode: Could not get UT handle for ICB."

    .line 971
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 973
    :cond_20
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "157"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_c

    if-eqz v1, :cond_23

    .line 977
    :try_start_19
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 978
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 980
    invoke-virtual {p0, v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 979
    invoke-interface {v1, v9, v2}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    return-void

    .line 982
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_8

    .line 984
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    move v5, v6

    .line 987
    :goto_8
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 990
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    .line 988
    invoke-interface {v1, v9, v5, v2, v3}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_19
    .catch Lcom/android/ims/ImsException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_c

    return-void

    :catch_b
    :try_start_1a
    const-string v1, "processCode: Could not get UT handle for ICBa."

    .line 994
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 996
    :cond_23
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "43"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 998
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v1

    .line 1000
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_9

    .line 1003
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1004
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    return-void

    .line 1006
    :cond_25
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1001
    :cond_26
    :goto_9
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    .line 1002
    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1001
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    return-void

    .line 1008
    :cond_27
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "processCode: Sending ussd string \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 1010
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    const-string v1, "processCode: invalid or unsupported MMI"

    .line 1013
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    const-string v1, "processCode: isShortCode"

    .line 793
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "processCode: Sending short code \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_c

    :catch_c
    move-exception v1

    .line 1017
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1018
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040437

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1019
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processCode: RuntimeException = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void
.end method

.method public final processImsSsData(Landroid/os/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1744
    :try_start_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsSsData;

    .line 1745
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->parseSsData(Landroid/telephony/ims/ImsSsData;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1747
    :catch_0
    new-instance p1, Lcom/android/ims/ImsException;

    const/4 v0, 0x0

    const-string v1, "Exception in parsing SS Data"

    invoke-direct {p1, v1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method final sendUssd(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1070
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x2

    .line 1078
    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1077
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public final setIsSsInfo(Z)V
    .locals 0

    .line 1911
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsSsInfo:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsPhoneMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " sc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " sia="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " sib="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " sic="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    const-string v2, "ImsPhoneMmiCode"

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " poundString="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " dialingNumber="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 1933
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " pwd="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_8

    const-string v1, " hasReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v1, "}"

    .line 1936
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
